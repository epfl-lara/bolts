; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20670 () Bool)

(assert start!20670)

(declare-fun b_free!5317 () Bool)

(declare-fun b_next!5317 () Bool)

(assert (=> start!20670 (= b_free!5317 (not b_next!5317))))

(declare-fun tp!18982 () Bool)

(declare-fun b_and!12081 () Bool)

(assert (=> start!20670 (= tp!18982 b_and!12081)))

(declare-fun b!206308 () Bool)

(declare-fun res!99939 () Bool)

(declare-fun e!134857 () Bool)

(assert (=> b!206308 (=> (not res!99939) (not e!134857))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9556 0))(
  ( (array!9557 (arr!4528 (Array (_ BitVec 32) (_ BitVec 64))) (size!4853 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9556)

(assert (=> b!206308 (= res!99939 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4853 _keys!825))))))

(declare-fun b!206309 () Bool)

(declare-fun e!134862 () Bool)

(declare-fun e!134858 () Bool)

(assert (=> b!206309 (= e!134862 e!134858)))

(declare-fun res!99941 () Bool)

(assert (=> b!206309 (=> res!99941 e!134858)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!206309 (= res!99941 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6545 0))(
  ( (V!6546 (val!2631 Int)) )
))
(declare-datatypes ((tuple2!3994 0))(
  ( (tuple2!3995 (_1!2007 (_ BitVec 64)) (_2!2007 V!6545)) )
))
(declare-datatypes ((List!2909 0))(
  ( (Nil!2906) (Cons!2905 (h!3547 tuple2!3994) (t!7848 List!2909)) )
))
(declare-datatypes ((ListLongMap!2921 0))(
  ( (ListLongMap!2922 (toList!1476 List!2909)) )
))
(declare-fun lt!105516 () ListLongMap!2921)

(declare-fun lt!105507 () ListLongMap!2921)

(assert (=> b!206309 (= lt!105516 lt!105507)))

(declare-fun lt!105515 () ListLongMap!2921)

(declare-fun lt!105509 () tuple2!3994)

(declare-fun +!493 (ListLongMap!2921 tuple2!3994) ListLongMap!2921)

(assert (=> b!206309 (= lt!105507 (+!493 lt!105515 lt!105509))))

(declare-fun lt!105511 () ListLongMap!2921)

(declare-fun lt!105517 () ListLongMap!2921)

(assert (=> b!206309 (= lt!105511 lt!105517)))

(declare-fun lt!105510 () ListLongMap!2921)

(assert (=> b!206309 (= lt!105517 (+!493 lt!105510 lt!105509))))

(declare-fun lt!105513 () ListLongMap!2921)

(assert (=> b!206309 (= lt!105511 (+!493 lt!105513 lt!105509))))

(declare-fun minValue!615 () V!6545)

(assert (=> b!206309 (= lt!105509 (tuple2!3995 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206310 () Bool)

(declare-fun res!99940 () Bool)

(assert (=> b!206310 (=> (not res!99940) (not e!134857))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9556 (_ BitVec 32)) Bool)

(assert (=> b!206310 (= res!99940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206311 () Bool)

(declare-fun res!99935 () Bool)

(assert (=> b!206311 (=> (not res!99935) (not e!134857))))

(declare-datatypes ((List!2910 0))(
  ( (Nil!2907) (Cons!2906 (h!3548 (_ BitVec 64)) (t!7849 List!2910)) )
))
(declare-fun arrayNoDuplicates!0 (array!9556 (_ BitVec 32) List!2910) Bool)

(assert (=> b!206311 (= res!99935 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2907))))

(declare-fun res!99942 () Bool)

(assert (=> start!20670 (=> (not res!99942) (not e!134857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20670 (= res!99942 (validMask!0 mask!1149))))

(assert (=> start!20670 e!134857))

(declare-datatypes ((ValueCell!2243 0))(
  ( (ValueCellFull!2243 (v!4597 V!6545)) (EmptyCell!2243) )
))
(declare-datatypes ((array!9558 0))(
  ( (array!9559 (arr!4529 (Array (_ BitVec 32) ValueCell!2243)) (size!4854 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9558)

(declare-fun e!134861 () Bool)

(declare-fun array_inv!2985 (array!9558) Bool)

(assert (=> start!20670 (and (array_inv!2985 _values!649) e!134861)))

(assert (=> start!20670 true))

(declare-fun tp_is_empty!5173 () Bool)

(assert (=> start!20670 tp_is_empty!5173))

(declare-fun array_inv!2986 (array!9556) Bool)

(assert (=> start!20670 (array_inv!2986 _keys!825)))

(assert (=> start!20670 tp!18982))

(declare-fun mapNonEmpty!8828 () Bool)

(declare-fun mapRes!8828 () Bool)

(declare-fun tp!18983 () Bool)

(declare-fun e!134863 () Bool)

(assert (=> mapNonEmpty!8828 (= mapRes!8828 (and tp!18983 e!134863))))

(declare-fun mapRest!8828 () (Array (_ BitVec 32) ValueCell!2243))

(declare-fun mapValue!8828 () ValueCell!2243)

(declare-fun mapKey!8828 () (_ BitVec 32))

(assert (=> mapNonEmpty!8828 (= (arr!4529 _values!649) (store mapRest!8828 mapKey!8828 mapValue!8828))))

(declare-fun b!206312 () Bool)

(assert (=> b!206312 (= e!134857 (not e!134862))))

(declare-fun res!99937 () Bool)

(assert (=> b!206312 (=> res!99937 e!134862)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206312 (= res!99937 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6545)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1038 (array!9556 array!9558 (_ BitVec 32) (_ BitVec 32) V!6545 V!6545 (_ BitVec 32) Int) ListLongMap!2921)

(assert (=> b!206312 (= lt!105516 (getCurrentListMap!1038 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105508 () array!9558)

(assert (=> b!206312 (= lt!105511 (getCurrentListMap!1038 _keys!825 lt!105508 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206312 (and (= lt!105513 lt!105510) (= lt!105510 lt!105513))))

(declare-fun lt!105512 () tuple2!3994)

(assert (=> b!206312 (= lt!105510 (+!493 lt!105515 lt!105512))))

(declare-fun v!520 () V!6545)

(assert (=> b!206312 (= lt!105512 (tuple2!3995 k!843 v!520))))

(declare-datatypes ((Unit!6281 0))(
  ( (Unit!6282) )
))
(declare-fun lt!105514 () Unit!6281)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!151 (array!9556 array!9558 (_ BitVec 32) (_ BitVec 32) V!6545 V!6545 (_ BitVec 32) (_ BitVec 64) V!6545 (_ BitVec 32) Int) Unit!6281)

(assert (=> b!206312 (= lt!105514 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!151 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!409 (array!9556 array!9558 (_ BitVec 32) (_ BitVec 32) V!6545 V!6545 (_ BitVec 32) Int) ListLongMap!2921)

(assert (=> b!206312 (= lt!105513 (getCurrentListMapNoExtraKeys!409 _keys!825 lt!105508 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206312 (= lt!105508 (array!9559 (store (arr!4529 _values!649) i!601 (ValueCellFull!2243 v!520)) (size!4854 _values!649)))))

(assert (=> b!206312 (= lt!105515 (getCurrentListMapNoExtraKeys!409 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206313 () Bool)

(assert (=> b!206313 (= e!134863 tp_is_empty!5173)))

(declare-fun b!206314 () Bool)

(declare-fun res!99936 () Bool)

(assert (=> b!206314 (=> (not res!99936) (not e!134857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206314 (= res!99936 (validKeyInArray!0 k!843))))

(declare-fun b!206315 () Bool)

(declare-fun res!99938 () Bool)

(assert (=> b!206315 (=> (not res!99938) (not e!134857))))

(assert (=> b!206315 (= res!99938 (= (select (arr!4528 _keys!825) i!601) k!843))))

(declare-fun b!206316 () Bool)

(declare-fun e!134859 () Bool)

(assert (=> b!206316 (= e!134859 tp_is_empty!5173)))

(declare-fun b!206317 () Bool)

(declare-fun res!99943 () Bool)

(assert (=> b!206317 (=> (not res!99943) (not e!134857))))

(assert (=> b!206317 (= res!99943 (and (= (size!4854 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4853 _keys!825) (size!4854 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206318 () Bool)

(assert (=> b!206318 (= e!134858 (bvsle #b00000000000000000000000000000000 (size!4853 _keys!825)))))

(assert (=> b!206318 (= lt!105517 (+!493 lt!105507 lt!105512))))

(declare-fun lt!105506 () Unit!6281)

(declare-fun addCommutativeForDiffKeys!191 (ListLongMap!2921 (_ BitVec 64) V!6545 (_ BitVec 64) V!6545) Unit!6281)

(assert (=> b!206318 (= lt!105506 (addCommutativeForDiffKeys!191 lt!105515 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8828 () Bool)

(assert (=> mapIsEmpty!8828 mapRes!8828))

(declare-fun b!206319 () Bool)

(assert (=> b!206319 (= e!134861 (and e!134859 mapRes!8828))))

(declare-fun condMapEmpty!8828 () Bool)

(declare-fun mapDefault!8828 () ValueCell!2243)

