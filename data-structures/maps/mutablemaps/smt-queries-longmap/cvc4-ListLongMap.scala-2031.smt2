; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35354 () Bool)

(assert start!35354)

(declare-fun b!353752 () Bool)

(declare-fun e!216742 () Bool)

(declare-fun tp_is_empty!7811 () Bool)

(assert (=> b!353752 (= e!216742 tp_is_empty!7811)))

(declare-fun mapIsEmpty!13221 () Bool)

(declare-fun mapRes!13221 () Bool)

(assert (=> mapIsEmpty!13221 mapRes!13221))

(declare-fun mapNonEmpty!13221 () Bool)

(declare-fun tp!27117 () Bool)

(declare-fun e!216739 () Bool)

(assert (=> mapNonEmpty!13221 (= mapRes!13221 (and tp!27117 e!216739))))

(declare-fun mapKey!13221 () (_ BitVec 32))

(declare-datatypes ((V!11391 0))(
  ( (V!11392 (val!3950 Int)) )
))
(declare-datatypes ((ValueCell!3562 0))(
  ( (ValueCellFull!3562 (v!6140 V!11391)) (EmptyCell!3562) )
))
(declare-fun mapRest!13221 () (Array (_ BitVec 32) ValueCell!3562))

(declare-datatypes ((array!19179 0))(
  ( (array!19180 (arr!9081 (Array (_ BitVec 32) ValueCell!3562)) (size!9433 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19179)

(declare-fun mapValue!13221 () ValueCell!3562)

(assert (=> mapNonEmpty!13221 (= (arr!9081 _values!1208) (store mapRest!13221 mapKey!13221 mapValue!13221))))

(declare-fun b!353753 () Bool)

(declare-fun e!216740 () Bool)

(assert (=> b!353753 (= e!216740 false)))

(declare-fun lt!165592 () Bool)

(declare-datatypes ((array!19181 0))(
  ( (array!19182 (arr!9082 (Array (_ BitVec 32) (_ BitVec 64))) (size!9434 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19181)

(declare-datatypes ((List!5303 0))(
  ( (Nil!5300) (Cons!5299 (h!6155 (_ BitVec 64)) (t!10461 List!5303)) )
))
(declare-fun arrayNoDuplicates!0 (array!19181 (_ BitVec 32) List!5303) Bool)

(assert (=> b!353753 (= lt!165592 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5300))))

(declare-fun b!353754 () Bool)

(declare-fun e!216743 () Bool)

(assert (=> b!353754 (= e!216743 (and e!216742 mapRes!13221))))

(declare-fun condMapEmpty!13221 () Bool)

(declare-fun mapDefault!13221 () ValueCell!3562)

