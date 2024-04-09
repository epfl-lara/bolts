; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42282 () Bool)

(assert start!42282)

(declare-fun b_free!11779 () Bool)

(declare-fun b_next!11779 () Bool)

(assert (=> start!42282 (= b_free!11779 (not b_next!11779))))

(declare-fun tp!41365 () Bool)

(declare-fun b_and!20235 () Bool)

(assert (=> start!42282 (= tp!41365 b_and!20235)))

(declare-fun b!471535 () Bool)

(declare-fun e!276402 () Bool)

(declare-fun tp_is_empty!13207 () Bool)

(assert (=> b!471535 (= e!276402 tp_is_empty!13207)))

(declare-fun b!471536 () Bool)

(declare-fun e!276403 () Bool)

(assert (=> b!471536 (= e!276403 (not true))))

(declare-datatypes ((V!18715 0))(
  ( (V!18716 (val!6648 Int)) )
))
(declare-datatypes ((tuple2!8734 0))(
  ( (tuple2!8735 (_1!4377 (_ BitVec 64)) (_2!4377 V!18715)) )
))
(declare-datatypes ((List!8852 0))(
  ( (Nil!8849) (Cons!8848 (h!9704 tuple2!8734) (t!14826 List!8852)) )
))
(declare-datatypes ((ListLongMap!7661 0))(
  ( (ListLongMap!7662 (toList!3846 List!8852)) )
))
(declare-fun lt!213978 () ListLongMap!7661)

(declare-fun lt!213976 () ListLongMap!7661)

(assert (=> b!471536 (= lt!213978 lt!213976)))

(declare-fun minValueBefore!38 () V!18715)

(declare-fun zeroValue!794 () V!18715)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13818 0))(
  ( (Unit!13819) )
))
(declare-fun lt!213977 () Unit!13818)

(declare-datatypes ((array!30141 0))(
  ( (array!30142 (arr!14489 (Array (_ BitVec 32) (_ BitVec 64))) (size!14841 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30141)

(declare-datatypes ((ValueCell!6260 0))(
  ( (ValueCellFull!6260 (v!8935 V!18715)) (EmptyCell!6260) )
))
(declare-datatypes ((array!30143 0))(
  ( (array!30144 (arr!14490 (Array (_ BitVec 32) ValueCell!6260)) (size!14842 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30143)

(declare-fun minValueAfter!38 () V!18715)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!203 (array!30141 array!30143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18715 V!18715 V!18715 V!18715 (_ BitVec 32) Int) Unit!13818)

(assert (=> b!471536 (= lt!213977 (lemmaNoChangeToArrayThenSameMapNoExtras!203 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2008 (array!30141 array!30143 (_ BitVec 32) (_ BitVec 32) V!18715 V!18715 (_ BitVec 32) Int) ListLongMap!7661)

(assert (=> b!471536 (= lt!213976 (getCurrentListMapNoExtraKeys!2008 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471536 (= lt!213978 (getCurrentListMapNoExtraKeys!2008 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471537 () Bool)

(declare-fun res!281758 () Bool)

(assert (=> b!471537 (=> (not res!281758) (not e!276403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30141 (_ BitVec 32)) Bool)

(assert (=> b!471537 (= res!281758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471538 () Bool)

(declare-fun e!276401 () Bool)

(assert (=> b!471538 (= e!276401 tp_is_empty!13207)))

(declare-fun b!471539 () Bool)

(declare-fun e!276399 () Bool)

(declare-fun mapRes!21517 () Bool)

(assert (=> b!471539 (= e!276399 (and e!276401 mapRes!21517))))

(declare-fun condMapEmpty!21517 () Bool)

(declare-fun mapDefault!21517 () ValueCell!6260)

