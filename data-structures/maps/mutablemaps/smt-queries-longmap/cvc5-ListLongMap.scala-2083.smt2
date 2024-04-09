; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35674 () Bool)

(assert start!35674)

(declare-fun mapNonEmpty!13686 () Bool)

(declare-fun mapRes!13686 () Bool)

(declare-fun tp!27744 () Bool)

(declare-fun e!219157 () Bool)

(assert (=> mapNonEmpty!13686 (= mapRes!13686 (and tp!27744 e!219157))))

(declare-datatypes ((V!11803 0))(
  ( (V!11804 (val!4104 Int)) )
))
(declare-datatypes ((ValueCell!3716 0))(
  ( (ValueCellFull!3716 (v!6294 V!11803)) (EmptyCell!3716) )
))
(declare-fun mapRest!13686 () (Array (_ BitVec 32) ValueCell!3716))

(declare-fun mapKey!13686 () (_ BitVec 32))

(declare-datatypes ((array!19769 0))(
  ( (array!19770 (arr!9375 (Array (_ BitVec 32) ValueCell!3716)) (size!9727 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19769)

(declare-fun mapValue!13686 () ValueCell!3716)

(assert (=> mapNonEmpty!13686 (= (arr!9375 _values!1208) (store mapRest!13686 mapKey!13686 mapValue!13686))))

(declare-fun b!358052 () Bool)

(declare-fun e!219161 () Bool)

(declare-fun e!219159 () Bool)

(assert (=> b!358052 (= e!219161 (and e!219159 mapRes!13686))))

(declare-fun condMapEmpty!13686 () Bool)

(declare-fun mapDefault!13686 () ValueCell!3716)

