library('coda')

a = read.table('../output/00/logs/hats_00.log', header=TRUE, row.names=1)
a$loss <- NULL

b = read.table('../output/01/logs/hats_00.log', header=TRUE, row.names=1)
b$loss <- NULL

c = read.table('../output/02/logs/hats_00.log', header=TRUE, row.names=1)
c$loss <- NULL

d = read.table('../output/03/logs/hats_00.log', header=TRUE, row.names=1)
d$loss <- NULL

e = read.table('../output/04/logs/hats_00.log', header=TRUE, row.names=1)
e$loss <- NULL

f = read.table('../output/05/logs/hats_00.log', header=TRUE, row.names=1)
f$loss <- NULL

g = read.table('../output/06/logs/hats_00.log', header=TRUE, row.names=1)
g$loss <- NULL

h = read.table('../output/07/logs/hats_00.log', header=TRUE, row.names=1)
h$loss <- NULL

i = read.table('../output/08/logs/hats_00.log', header=TRUE, row.names=1)
i$loss <- NULL

j = read.table('../output/09/logs/hats_00.log', header=TRUE, row.names=1)
j$loss <- NULL

l = mcmc.list(mcmc(a), mcmc(b), mcmc(c), mcmc(d), mcmc(e),
              mcmc(f), mcmc(g), mcmc(h), mcmc(i), mcmc(j))

gelman.plot(l)
