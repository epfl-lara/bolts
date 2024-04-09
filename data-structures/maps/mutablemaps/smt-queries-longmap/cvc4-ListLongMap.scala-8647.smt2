; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105240 () Bool)

(assert start!105240)

(declare-fun b_free!26921 () Bool)

(declare-fun b_next!26921 () Bool)

(assert (=> start!105240 (= b_free!26921 (not b_next!26921))))

(declare-fun tp!94268 () Bool)

(declare-fun b_and!44745 () Bool)

(assert (=> start!105240 (= tp!94268 b_and!44745)))

(declare-fun b!1253579 () Bool)

(declare-fun res!835996 () Bool)

(declare-fun e!712228 () Bool)

(assert (=> b!1253579 (=> (not res!835996) (not e!712228))))

(declare-datatypes ((array!81285 0))(
  ( (array!81286 (arr!39200 (Array (_ BitVec 32) (_ BitVec 64))) (size!39737 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81285)

(declare-datatypes ((List!28013 0))(
  ( (Nil!28010) (Cons!28009 (h!29218 (_ BitVec 64)) (t!41501 List!28013)) )
))
(declare-fun arrayNoDuplicates!0 (array!81285 (_ BitVec 32) List!28013) Bool)

(assert (=> b!1253579 (= res!835996 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28010))))

(declare-fun b!1253580 () Bool)

(declare-fun res!835998 () Bool)

(assert (=> b!1253580 (=> (not res!835998) (not e!712228))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81285 (_ BitVec 32)) Bool)

(assert (=> b!1253580 (= res!835998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49510 () Bool)

(declare-fun mapRes!49510 () Bool)

(assert (=> mapIsEmpty!49510 mapRes!49510))

(declare-fun res!835999 () Bool)

(assert (=> start!105240 (=> (not res!835999) (not e!712228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105240 (= res!835999 (validMask!0 mask!1466))))

(assert (=> start!105240 e!712228))

(assert (=> start!105240 true))

(assert (=> start!105240 tp!94268))

(declare-fun tp_is_empty!31823 () Bool)

(assert (=> start!105240 tp_is_empty!31823))

(declare-fun array_inv!29825 (array!81285) Bool)

(assert (=> start!105240 (array_inv!29825 _keys!1118)))

(declare-datatypes ((V!47795 0))(
  ( (V!47796 (val!15974 Int)) )
))
(declare-datatypes ((ValueCell!15148 0))(
  ( (ValueCellFull!15148 (v!18672 V!47795)) (EmptyCell!15148) )
))
(declare-datatypes ((array!81287 0))(
  ( (array!81288 (arr!39201 (Array (_ BitVec 32) ValueCell!15148)) (size!39738 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81287)

(declare-fun e!712230 () Bool)

(declare-fun array_inv!29826 (array!81287) Bool)

(assert (=> start!105240 (and (array_inv!29826 _values!914) e!712230)))

(declare-fun b!1253581 () Bool)

(declare-fun e!712232 () Bool)

(assert (=> b!1253581 (= e!712228 (not e!712232))))

(declare-fun res!836000 () Bool)

(assert (=> b!1253581 (=> res!836000 e!712232)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253581 (= res!836000 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20766 0))(
  ( (tuple2!20767 (_1!10393 (_ BitVec 64)) (_2!10393 V!47795)) )
))
(declare-datatypes ((List!28014 0))(
  ( (Nil!28011) (Cons!28010 (h!29219 tuple2!20766) (t!41502 List!28014)) )
))
(declare-datatypes ((ListLongMap!18651 0))(
  ( (ListLongMap!18652 (toList!9341 List!28014)) )
))
(declare-fun lt!566149 () ListLongMap!18651)

(declare-fun lt!566145 () ListLongMap!18651)

(assert (=> b!1253581 (= lt!566149 lt!566145)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47795)

(declare-datatypes ((Unit!41652 0))(
  ( (Unit!41653) )
))
(declare-fun lt!566150 () Unit!41652)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47795)

(declare-fun minValueBefore!43 () V!47795)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1025 (array!81285 array!81287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47795 V!47795 V!47795 V!47795 (_ BitVec 32) Int) Unit!41652)

(assert (=> b!1253581 (= lt!566150 (lemmaNoChangeToArrayThenSameMapNoExtras!1025 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5707 (array!81285 array!81287 (_ BitVec 32) (_ BitVec 32) V!47795 V!47795 (_ BitVec 32) Int) ListLongMap!18651)

(assert (=> b!1253581 (= lt!566145 (getCurrentListMapNoExtraKeys!5707 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253581 (= lt!566149 (getCurrentListMapNoExtraKeys!5707 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253582 () Bool)

(declare-fun e!712229 () Bool)

(assert (=> b!1253582 (= e!712229 tp_is_empty!31823)))

(declare-fun b!1253583 () Bool)

(declare-fun e!712231 () Bool)

(assert (=> b!1253583 (= e!712231 tp_is_empty!31823)))

(declare-fun b!1253584 () Bool)

(assert (=> b!1253584 (= e!712230 (and e!712229 mapRes!49510))))

(declare-fun condMapEmpty!49510 () Bool)

(declare-fun mapDefault!49510 () ValueCell!15148)

