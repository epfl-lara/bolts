; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249526 () Bool)

(assert start!249526)

(declare-fun b_free!72589 () Bool)

(declare-fun b_next!73293 () Bool)

(assert (=> start!249526 (= b_free!72589 (not b_next!73293))))

(declare-fun tp!819355 () Bool)

(declare-fun b_and!188883 () Bool)

(assert (=> start!249526 (= tp!819355 b_and!188883)))

(declare-fun res!1084899 () Bool)

(declare-fun e!1627532 () Bool)

(assert (=> start!249526 (=> (not res!1084899) (not e!1627532))))

(declare-fun initialSize!22 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249526 (= res!1084899 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(assert (=> start!249526 e!1627532))

(assert (=> start!249526 true))

(assert (=> start!249526 tp!819355))

(declare-fun b!2579057 () Bool)

(assert (=> b!2579057 (= e!1627532 false)))

(declare-fun defaultValue!132 () Int)

(declare-fun lambda!95545 () Int)

(declare-datatypes ((Hashable!3363 0))(
  ( (HashableExt!3362 (__x!19275 Int)) )
))
(declare-fun hashF!644 () Hashable!3363)

(declare-fun lt!907397 () Bool)

(declare-datatypes ((V!6104 0))(
  ( (V!6105 (val!9413 Int)) )
))
(declare-datatypes ((K!5902 0))(
  ( (K!5903 (val!9414 Int)) )
))
(declare-datatypes ((tuple2!29664 0))(
  ( (tuple2!29665 (_1!17374 K!5902) (_2!17374 V!6104)) )
))
(declare-datatypes ((List!29798 0))(
  ( (Nil!29698) (Cons!29698 (h!35118 tuple2!29664) (t!211683 List!29798)) )
))
(declare-datatypes ((array!12283 0))(
  ( (array!12284 (arr!5480 (Array (_ BitVec 32) List!29798)) (size!23010 (_ BitVec 32))) )
))
(declare-datatypes ((array!12285 0))(
  ( (array!12286 (arr!5481 (Array (_ BitVec 32) (_ BitVec 64))) (size!23011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6890 0))(
  ( (LongMapFixedSize!6891 (defaultEntry!3823 Int) (mask!8872 (_ BitVec 32)) (extraKeys!3693 (_ BitVec 32)) (zeroValue!3703 List!29798) (minValue!3703 List!29798) (_size!6935 (_ BitVec 32)) (_keys!3742 array!12285) (_values!3725 array!12283) (_vacant!3506 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13593 0))(
  ( (Cell!13594 (v!32009 LongMapFixedSize!6890)) )
))
(declare-datatypes ((MutLongMap!3445 0))(
  ( (LongMap!3445 (underlying!7095 Cell!13593)) (MutLongMapExt!3444 (__x!19276 Int)) )
))
(declare-datatypes ((Cell!13595 0))(
  ( (Cell!13596 (v!32010 MutLongMap!3445)) )
))
(declare-datatypes ((MutableMap!3353 0))(
  ( (MutableMapExt!3352 (__x!19277 Int)) (HashMap!3353 (underlying!7096 Cell!13595) (hashF!5393 Hashable!3363) (_size!6936 (_ BitVec 32)) (defaultValue!3524 Int)) )
))
(declare-fun valid!2664 (MutableMap!3353) Bool)

(declare-fun getEmptyLongMap!24 (Int (_ BitVec 32)) MutLongMap!3445)

(assert (=> b!2579057 (= lt!907397 (valid!2664 (HashMap!3353 (Cell!13596 (getEmptyLongMap!24 lambda!95545 initialSize!22)) hashF!644 #b00000000000000000000000000000000 defaultValue!132)))))

(assert (= (and start!249526 res!1084899) b!2579057))

(declare-fun m!2913971 () Bool)

(assert (=> start!249526 m!2913971))

(declare-fun m!2913973 () Bool)

(assert (=> b!2579057 m!2913973))

(declare-fun m!2913975 () Bool)

(assert (=> b!2579057 m!2913975))

(push 1)

(assert (not start!249526))

(assert (not b!2579057))

(assert b_and!188883)

(assert (not b_next!73293))

(check-sat)

(pop 1)

(push 1)

(assert b_and!188883)

(assert (not b_next!73293))

(check-sat)

(pop 1)

