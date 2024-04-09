; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42286 () Bool)

(assert start!42286)

(declare-fun b_free!11783 () Bool)

(declare-fun b_next!11783 () Bool)

(assert (=> start!42286 (= b_free!11783 (not b_next!11783))))

(declare-fun tp!41377 () Bool)

(declare-fun b_and!20239 () Bool)

(assert (=> start!42286 (= tp!41377 b_and!20239)))

(declare-fun b!471577 () Bool)

(declare-fun res!281783 () Bool)

(declare-fun e!276431 () Bool)

(assert (=> b!471577 (=> (not res!281783) (not e!276431))))

(declare-datatypes ((array!30149 0))(
  ( (array!30150 (arr!14493 (Array (_ BitVec 32) (_ BitVec 64))) (size!14845 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30149)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30149 (_ BitVec 32)) Bool)

(assert (=> b!471577 (= res!281783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471578 () Bool)

(declare-fun res!281780 () Bool)

(assert (=> b!471578 (=> (not res!281780) (not e!276431))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((V!18719 0))(
  ( (V!18720 (val!6650 Int)) )
))
(declare-datatypes ((ValueCell!6262 0))(
  ( (ValueCellFull!6262 (v!8937 V!18719)) (EmptyCell!6262) )
))
(declare-datatypes ((array!30151 0))(
  ( (array!30152 (arr!14494 (Array (_ BitVec 32) ValueCell!6262)) (size!14846 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30151)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471578 (= res!281780 (and (= (size!14846 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14845 _keys!1025) (size!14846 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471579 () Bool)

(assert (=> b!471579 (= e!276431 (not true))))

(declare-datatypes ((tuple2!8738 0))(
  ( (tuple2!8739 (_1!4379 (_ BitVec 64)) (_2!4379 V!18719)) )
))
(declare-datatypes ((List!8855 0))(
  ( (Nil!8852) (Cons!8851 (h!9707 tuple2!8738) (t!14829 List!8855)) )
))
(declare-datatypes ((ListLongMap!7665 0))(
  ( (ListLongMap!7666 (toList!3848 List!8855)) )
))
(declare-fun lt!213996 () ListLongMap!7665)

(declare-fun lt!213994 () ListLongMap!7665)

(assert (=> b!471579 (= lt!213996 lt!213994)))

(declare-fun minValueBefore!38 () V!18719)

(declare-fun zeroValue!794 () V!18719)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13822 0))(
  ( (Unit!13823) )
))
(declare-fun lt!213995 () Unit!13822)

(declare-fun minValueAfter!38 () V!18719)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!205 (array!30149 array!30151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18719 V!18719 V!18719 V!18719 (_ BitVec 32) Int) Unit!13822)

(assert (=> b!471579 (= lt!213995 (lemmaNoChangeToArrayThenSameMapNoExtras!205 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2010 (array!30149 array!30151 (_ BitVec 32) (_ BitVec 32) V!18719 V!18719 (_ BitVec 32) Int) ListLongMap!7665)

(assert (=> b!471579 (= lt!213994 (getCurrentListMapNoExtraKeys!2010 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471579 (= lt!213996 (getCurrentListMapNoExtraKeys!2010 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21523 () Bool)

(declare-fun mapRes!21523 () Bool)

(assert (=> mapIsEmpty!21523 mapRes!21523))

(declare-fun mapNonEmpty!21523 () Bool)

(declare-fun tp!41376 () Bool)

(declare-fun e!276432 () Bool)

(assert (=> mapNonEmpty!21523 (= mapRes!21523 (and tp!41376 e!276432))))

(declare-fun mapKey!21523 () (_ BitVec 32))

(declare-fun mapValue!21523 () ValueCell!6262)

(declare-fun mapRest!21523 () (Array (_ BitVec 32) ValueCell!6262))

(assert (=> mapNonEmpty!21523 (= (arr!14494 _values!833) (store mapRest!21523 mapKey!21523 mapValue!21523))))

(declare-fun b!471580 () Bool)

(declare-fun e!276433 () Bool)

(declare-fun tp_is_empty!13211 () Bool)

(assert (=> b!471580 (= e!276433 tp_is_empty!13211)))

(declare-fun b!471582 () Bool)

(declare-fun e!276429 () Bool)

(assert (=> b!471582 (= e!276429 (and e!276433 mapRes!21523))))

(declare-fun condMapEmpty!21523 () Bool)

(declare-fun mapDefault!21523 () ValueCell!6262)

