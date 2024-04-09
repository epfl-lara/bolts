; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35528 () Bool)

(assert start!35528)

(declare-fun mapNonEmpty!13467 () Bool)

(declare-fun mapRes!13467 () Bool)

(declare-fun tp!27444 () Bool)

(declare-fun e!217981 () Bool)

(assert (=> mapNonEmpty!13467 (= mapRes!13467 (and tp!27444 e!217981))))

(declare-fun mapKey!13467 () (_ BitVec 32))

(declare-datatypes ((V!11607 0))(
  ( (V!11608 (val!4031 Int)) )
))
(declare-datatypes ((ValueCell!3643 0))(
  ( (ValueCellFull!3643 (v!6221 V!11607)) (EmptyCell!3643) )
))
(declare-fun mapRest!13467 () (Array (_ BitVec 32) ValueCell!3643))

(declare-fun mapValue!13467 () ValueCell!3643)

(declare-datatypes ((array!19491 0))(
  ( (array!19492 (arr!9236 (Array (_ BitVec 32) ValueCell!3643)) (size!9588 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19491)

(assert (=> mapNonEmpty!13467 (= (arr!9236 _values!1208) (store mapRest!13467 mapKey!13467 mapValue!13467))))

(declare-fun b!355749 () Bool)

(declare-fun e!217983 () Bool)

(declare-fun e!217982 () Bool)

(assert (=> b!355749 (= e!217983 (and e!217982 mapRes!13467))))

(declare-fun condMapEmpty!13467 () Bool)

(declare-fun mapDefault!13467 () ValueCell!3643)

