; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20404 () Bool)

(assert start!20404)

(declare-fun b_free!5051 () Bool)

(declare-fun b_next!5051 () Bool)

(assert (=> start!20404 (= b_free!5051 (not b_next!5051))))

(declare-fun tp!18184 () Bool)

(declare-fun b_and!11815 () Bool)

(assert (=> start!20404 (= tp!18184 b_and!11815)))

(declare-fun b!201502 () Bool)

(declare-fun e!132065 () Bool)

(declare-fun e!132068 () Bool)

(assert (=> b!201502 (= e!132065 e!132068)))

(declare-fun res!96334 () Bool)

(assert (=> b!201502 (=> res!96334 e!132068)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!201502 (= res!96334 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6189 0))(
  ( (V!6190 (val!2498 Int)) )
))
(declare-datatypes ((tuple2!3778 0))(
  ( (tuple2!3779 (_1!1899 (_ BitVec 64)) (_2!1899 V!6189)) )
))
(declare-datatypes ((List!2714 0))(
  ( (Nil!2711) (Cons!2710 (h!3352 tuple2!3778) (t!7653 List!2714)) )
))
(declare-datatypes ((ListLongMap!2705 0))(
  ( (ListLongMap!2706 (toList!1368 List!2714)) )
))
(declare-fun lt!100546 () ListLongMap!2705)

(declare-fun lt!100547 () ListLongMap!2705)

(assert (=> b!201502 (= lt!100546 lt!100547)))

(declare-fun lt!100542 () ListLongMap!2705)

(declare-fun lt!100540 () tuple2!3778)

(declare-fun +!385 (ListLongMap!2705 tuple2!3778) ListLongMap!2705)

(assert (=> b!201502 (= lt!100547 (+!385 lt!100542 lt!100540))))

(declare-datatypes ((Unit!6077 0))(
  ( (Unit!6078) )
))
(declare-fun lt!100537 () Unit!6077)

(declare-fun v!520 () V!6189)

(declare-fun zeroValue!615 () V!6189)

(declare-fun lt!100545 () ListLongMap!2705)

(declare-fun addCommutativeForDiffKeys!106 (ListLongMap!2705 (_ BitVec 64) V!6189 (_ BitVec 64) V!6189) Unit!6077)

(assert (=> b!201502 (= lt!100537 (addCommutativeForDiffKeys!106 lt!100545 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100539 () ListLongMap!2705)

(declare-fun lt!100543 () tuple2!3778)

(assert (=> b!201502 (= lt!100539 (+!385 lt!100546 lt!100543))))

(declare-fun lt!100535 () ListLongMap!2705)

(declare-fun lt!100549 () tuple2!3778)

(assert (=> b!201502 (= lt!100546 (+!385 lt!100535 lt!100549))))

(declare-fun lt!100536 () ListLongMap!2705)

(declare-fun lt!100541 () ListLongMap!2705)

(assert (=> b!201502 (= lt!100536 lt!100541)))

(assert (=> b!201502 (= lt!100541 (+!385 lt!100542 lt!100543))))

(assert (=> b!201502 (= lt!100542 (+!385 lt!100545 lt!100549))))

(declare-fun lt!100544 () ListLongMap!2705)

(assert (=> b!201502 (= lt!100539 (+!385 (+!385 lt!100544 lt!100549) lt!100543))))

(declare-fun minValue!615 () V!6189)

(assert (=> b!201502 (= lt!100543 (tuple2!3779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201502 (= lt!100549 (tuple2!3779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201503 () Bool)

(declare-fun res!96329 () Bool)

(declare-fun e!132064 () Bool)

(assert (=> b!201503 (=> (not res!96329) (not e!132064))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9042 0))(
  ( (array!9043 (arr!4271 (Array (_ BitVec 32) (_ BitVec 64))) (size!4596 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9042)

(assert (=> b!201503 (= res!96329 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4596 _keys!825))))))

(declare-fun b!201504 () Bool)

(declare-fun res!96328 () Bool)

(assert (=> b!201504 (=> (not res!96328) (not e!132064))))

(declare-datatypes ((List!2715 0))(
  ( (Nil!2712) (Cons!2711 (h!3353 (_ BitVec 64)) (t!7654 List!2715)) )
))
(declare-fun arrayNoDuplicates!0 (array!9042 (_ BitVec 32) List!2715) Bool)

(assert (=> b!201504 (= res!96328 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2712))))

(declare-fun b!201505 () Bool)

(declare-fun res!96327 () Bool)

(assert (=> b!201505 (=> (not res!96327) (not e!132064))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2110 0))(
  ( (ValueCellFull!2110 (v!4464 V!6189)) (EmptyCell!2110) )
))
(declare-datatypes ((array!9044 0))(
  ( (array!9045 (arr!4272 (Array (_ BitVec 32) ValueCell!2110)) (size!4597 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9044)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201505 (= res!96327 (and (= (size!4597 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4596 _keys!825) (size!4597 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8429 () Bool)

(declare-fun mapRes!8429 () Bool)

(assert (=> mapIsEmpty!8429 mapRes!8429))

(declare-fun b!201506 () Bool)

(assert (=> b!201506 (= e!132068 true)))

(assert (=> b!201506 (= (+!385 lt!100547 lt!100543) (+!385 lt!100541 lt!100540))))

(declare-fun lt!100534 () Unit!6077)

(assert (=> b!201506 (= lt!100534 (addCommutativeForDiffKeys!106 lt!100542 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201507 () Bool)

(assert (=> b!201507 (= e!132064 (not e!132065))))

(declare-fun res!96332 () Bool)

(assert (=> b!201507 (=> res!96332 e!132065)))

(assert (=> b!201507 (= res!96332 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!951 (array!9042 array!9044 (_ BitVec 32) (_ BitVec 32) V!6189 V!6189 (_ BitVec 32) Int) ListLongMap!2705)

(assert (=> b!201507 (= lt!100536 (getCurrentListMap!951 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100548 () array!9044)

(assert (=> b!201507 (= lt!100539 (getCurrentListMap!951 _keys!825 lt!100548 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201507 (and (= lt!100544 lt!100535) (= lt!100535 lt!100544))))

(assert (=> b!201507 (= lt!100535 (+!385 lt!100545 lt!100540))))

(assert (=> b!201507 (= lt!100540 (tuple2!3779 k!843 v!520))))

(declare-fun lt!100538 () Unit!6077)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!64 (array!9042 array!9044 (_ BitVec 32) (_ BitVec 32) V!6189 V!6189 (_ BitVec 32) (_ BitVec 64) V!6189 (_ BitVec 32) Int) Unit!6077)

(assert (=> b!201507 (= lt!100538 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!64 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!322 (array!9042 array!9044 (_ BitVec 32) (_ BitVec 32) V!6189 V!6189 (_ BitVec 32) Int) ListLongMap!2705)

(assert (=> b!201507 (= lt!100544 (getCurrentListMapNoExtraKeys!322 _keys!825 lt!100548 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201507 (= lt!100548 (array!9045 (store (arr!4272 _values!649) i!601 (ValueCellFull!2110 v!520)) (size!4597 _values!649)))))

(assert (=> b!201507 (= lt!100545 (getCurrentListMapNoExtraKeys!322 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201509 () Bool)

(declare-fun e!132066 () Bool)

(declare-fun tp_is_empty!4907 () Bool)

(assert (=> b!201509 (= e!132066 tp_is_empty!4907)))

(declare-fun b!201510 () Bool)

(declare-fun res!96326 () Bool)

(assert (=> b!201510 (=> (not res!96326) (not e!132064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201510 (= res!96326 (validKeyInArray!0 k!843))))

(declare-fun b!201511 () Bool)

(declare-fun res!96333 () Bool)

(assert (=> b!201511 (=> (not res!96333) (not e!132064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9042 (_ BitVec 32)) Bool)

(assert (=> b!201511 (= res!96333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8429 () Bool)

(declare-fun tp!18185 () Bool)

(declare-fun e!132067 () Bool)

(assert (=> mapNonEmpty!8429 (= mapRes!8429 (and tp!18185 e!132067))))

(declare-fun mapKey!8429 () (_ BitVec 32))

(declare-fun mapRest!8429 () (Array (_ BitVec 32) ValueCell!2110))

(declare-fun mapValue!8429 () ValueCell!2110)

(assert (=> mapNonEmpty!8429 (= (arr!4272 _values!649) (store mapRest!8429 mapKey!8429 mapValue!8429))))

(declare-fun res!96330 () Bool)

(assert (=> start!20404 (=> (not res!96330) (not e!132064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20404 (= res!96330 (validMask!0 mask!1149))))

(assert (=> start!20404 e!132064))

(declare-fun e!132069 () Bool)

(declare-fun array_inv!2809 (array!9044) Bool)

(assert (=> start!20404 (and (array_inv!2809 _values!649) e!132069)))

(assert (=> start!20404 true))

(assert (=> start!20404 tp_is_empty!4907))

(declare-fun array_inv!2810 (array!9042) Bool)

(assert (=> start!20404 (array_inv!2810 _keys!825)))

(assert (=> start!20404 tp!18184))

(declare-fun b!201508 () Bool)

(assert (=> b!201508 (= e!132069 (and e!132066 mapRes!8429))))

(declare-fun condMapEmpty!8429 () Bool)

(declare-fun mapDefault!8429 () ValueCell!2110)

