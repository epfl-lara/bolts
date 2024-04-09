; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35686 () Bool)

(assert start!35686)

(declare-fun mapNonEmpty!13704 () Bool)

(declare-fun mapRes!13704 () Bool)

(declare-fun tp!27762 () Bool)

(declare-fun e!219247 () Bool)

(assert (=> mapNonEmpty!13704 (= mapRes!13704 (and tp!27762 e!219247))))

(declare-datatypes ((V!11819 0))(
  ( (V!11820 (val!4110 Int)) )
))
(declare-datatypes ((ValueCell!3722 0))(
  ( (ValueCellFull!3722 (v!6300 V!11819)) (EmptyCell!3722) )
))
(declare-fun mapRest!13704 () (Array (_ BitVec 32) ValueCell!3722))

(declare-fun mapKey!13704 () (_ BitVec 32))

(declare-fun mapValue!13704 () ValueCell!3722)

(declare-datatypes ((array!19791 0))(
  ( (array!19792 (arr!9386 (Array (_ BitVec 32) ValueCell!3722)) (size!9738 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19791)

(assert (=> mapNonEmpty!13704 (= (arr!9386 _values!1208) (store mapRest!13704 mapKey!13704 mapValue!13704))))

(declare-fun b!358188 () Bool)

(declare-fun e!219249 () Bool)

(assert (=> b!358188 (= e!219249 false)))

(declare-fun lt!166144 () Bool)

(declare-datatypes ((array!19793 0))(
  ( (array!19794 (arr!9387 (Array (_ BitVec 32) (_ BitVec 64))) (size!9739 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19793)

(declare-datatypes ((List!5448 0))(
  ( (Nil!5445) (Cons!5444 (h!6300 (_ BitVec 64)) (t!10606 List!5448)) )
))
(declare-fun arrayNoDuplicates!0 (array!19793 (_ BitVec 32) List!5448) Bool)

(assert (=> b!358188 (= lt!166144 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5445))))

(declare-fun b!358189 () Bool)

(declare-fun tp_is_empty!8131 () Bool)

(assert (=> b!358189 (= e!219247 tp_is_empty!8131)))

(declare-fun b!358190 () Bool)

(declare-fun e!219250 () Bool)

(assert (=> b!358190 (= e!219250 tp_is_empty!8131)))

(declare-fun b!358191 () Bool)

(declare-fun e!219248 () Bool)

(assert (=> b!358191 (= e!219248 (and e!219250 mapRes!13704))))

(declare-fun condMapEmpty!13704 () Bool)

(declare-fun mapDefault!13704 () ValueCell!3722)

