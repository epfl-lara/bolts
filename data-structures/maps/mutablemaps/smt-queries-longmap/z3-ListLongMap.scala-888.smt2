; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20438 () Bool)

(assert start!20438)

(declare-fun b_free!5085 () Bool)

(declare-fun b_next!5085 () Bool)

(assert (=> start!20438 (= b_free!5085 (not b_next!5085))))

(declare-fun tp!18286 () Bool)

(declare-fun b_and!11849 () Bool)

(assert (=> start!20438 (= tp!18286 b_and!11849)))

(declare-fun b!202114 () Bool)

(declare-fun res!96792 () Bool)

(declare-fun e!132425 () Bool)

(assert (=> b!202114 (=> (not res!96792) (not e!132425))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202114 (= res!96792 (validKeyInArray!0 k0!843))))

(declare-fun b!202115 () Bool)

(declare-fun e!132427 () Bool)

(assert (=> b!202115 (= e!132425 (not e!132427))))

(declare-fun res!96787 () Bool)

(assert (=> b!202115 (=> res!96787 e!132427)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202115 (= res!96787 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6235 0))(
  ( (V!6236 (val!2515 Int)) )
))
(declare-fun zeroValue!615 () V!6235)

(declare-datatypes ((array!9106 0))(
  ( (array!9107 (arr!4303 (Array (_ BitVec 32) (_ BitVec 64))) (size!4628 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9106)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6235)

(declare-datatypes ((ValueCell!2127 0))(
  ( (ValueCellFull!2127 (v!4481 V!6235)) (EmptyCell!2127) )
))
(declare-datatypes ((array!9108 0))(
  ( (array!9109 (arr!4304 (Array (_ BitVec 32) ValueCell!2127)) (size!4629 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9108)

(declare-datatypes ((tuple2!3806 0))(
  ( (tuple2!3807 (_1!1913 (_ BitVec 64)) (_2!1913 V!6235)) )
))
(declare-datatypes ((List!2739 0))(
  ( (Nil!2736) (Cons!2735 (h!3377 tuple2!3806) (t!7678 List!2739)) )
))
(declare-datatypes ((ListLongMap!2733 0))(
  ( (ListLongMap!2734 (toList!1382 List!2739)) )
))
(declare-fun lt!101352 () ListLongMap!2733)

(declare-fun getCurrentListMap!960 (array!9106 array!9108 (_ BitVec 32) (_ BitVec 32) V!6235 V!6235 (_ BitVec 32) Int) ListLongMap!2733)

(assert (=> b!202115 (= lt!101352 (getCurrentListMap!960 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101365 () array!9108)

(declare-fun lt!101354 () ListLongMap!2733)

(assert (=> b!202115 (= lt!101354 (getCurrentListMap!960 _keys!825 lt!101365 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101355 () ListLongMap!2733)

(declare-fun lt!101353 () ListLongMap!2733)

(assert (=> b!202115 (and (= lt!101355 lt!101353) (= lt!101353 lt!101355))))

(declare-fun lt!101356 () ListLongMap!2733)

(declare-fun lt!101361 () tuple2!3806)

(declare-fun +!399 (ListLongMap!2733 tuple2!3806) ListLongMap!2733)

(assert (=> b!202115 (= lt!101353 (+!399 lt!101356 lt!101361))))

(declare-fun v!520 () V!6235)

(assert (=> b!202115 (= lt!101361 (tuple2!3807 k0!843 v!520))))

(declare-datatypes ((Unit!6105 0))(
  ( (Unit!6106) )
))
(declare-fun lt!101357 () Unit!6105)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!73 (array!9106 array!9108 (_ BitVec 32) (_ BitVec 32) V!6235 V!6235 (_ BitVec 32) (_ BitVec 64) V!6235 (_ BitVec 32) Int) Unit!6105)

(assert (=> b!202115 (= lt!101357 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!73 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!331 (array!9106 array!9108 (_ BitVec 32) (_ BitVec 32) V!6235 V!6235 (_ BitVec 32) Int) ListLongMap!2733)

(assert (=> b!202115 (= lt!101355 (getCurrentListMapNoExtraKeys!331 _keys!825 lt!101365 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202115 (= lt!101365 (array!9109 (store (arr!4304 _values!649) i!601 (ValueCellFull!2127 v!520)) (size!4629 _values!649)))))

(assert (=> b!202115 (= lt!101356 (getCurrentListMapNoExtraKeys!331 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202116 () Bool)

(declare-fun e!132423 () Bool)

(declare-fun tp_is_empty!4941 () Bool)

(assert (=> b!202116 (= e!132423 tp_is_empty!4941)))

(declare-fun b!202117 () Bool)

(declare-fun res!96790 () Bool)

(assert (=> b!202117 (=> (not res!96790) (not e!132425))))

(assert (=> b!202117 (= res!96790 (and (= (size!4629 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4628 _keys!825) (size!4629 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202118 () Bool)

(declare-fun e!132422 () Bool)

(assert (=> b!202118 (= e!132422 true)))

(declare-fun lt!101358 () ListLongMap!2733)

(declare-fun lt!101351 () ListLongMap!2733)

(declare-fun lt!101359 () tuple2!3806)

(assert (=> b!202118 (= (+!399 lt!101351 lt!101359) (+!399 lt!101358 lt!101361))))

(declare-fun lt!101363 () ListLongMap!2733)

(declare-fun lt!101362 () Unit!6105)

(declare-fun addCommutativeForDiffKeys!120 (ListLongMap!2733 (_ BitVec 64) V!6235 (_ BitVec 64) V!6235) Unit!6105)

(assert (=> b!202118 (= lt!101362 (addCommutativeForDiffKeys!120 lt!101363 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8480 () Bool)

(declare-fun mapRes!8480 () Bool)

(assert (=> mapIsEmpty!8480 mapRes!8480))

(declare-fun b!202119 () Bool)

(declare-fun e!132421 () Bool)

(assert (=> b!202119 (= e!132421 tp_is_empty!4941)))

(declare-fun b!202120 () Bool)

(declare-fun e!132424 () Bool)

(assert (=> b!202120 (= e!132424 (and e!132421 mapRes!8480))))

(declare-fun condMapEmpty!8480 () Bool)

(declare-fun mapDefault!8480 () ValueCell!2127)

(assert (=> b!202120 (= condMapEmpty!8480 (= (arr!4304 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2127)) mapDefault!8480)))))

(declare-fun b!202121 () Bool)

(assert (=> b!202121 (= e!132427 e!132422)))

(declare-fun res!96789 () Bool)

(assert (=> b!202121 (=> res!96789 e!132422)))

(assert (=> b!202121 (= res!96789 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101360 () ListLongMap!2733)

(assert (=> b!202121 (= lt!101360 lt!101351)))

(assert (=> b!202121 (= lt!101351 (+!399 lt!101363 lt!101361))))

(declare-fun lt!101364 () Unit!6105)

(assert (=> b!202121 (= lt!101364 (addCommutativeForDiffKeys!120 lt!101356 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!202121 (= lt!101354 (+!399 lt!101360 lt!101359))))

(declare-fun lt!101350 () tuple2!3806)

(assert (=> b!202121 (= lt!101360 (+!399 lt!101353 lt!101350))))

(assert (=> b!202121 (= lt!101352 lt!101358)))

(assert (=> b!202121 (= lt!101358 (+!399 lt!101363 lt!101359))))

(assert (=> b!202121 (= lt!101363 (+!399 lt!101356 lt!101350))))

(assert (=> b!202121 (= lt!101354 (+!399 (+!399 lt!101355 lt!101350) lt!101359))))

(assert (=> b!202121 (= lt!101359 (tuple2!3807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202121 (= lt!101350 (tuple2!3807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8480 () Bool)

(declare-fun tp!18287 () Bool)

(assert (=> mapNonEmpty!8480 (= mapRes!8480 (and tp!18287 e!132423))))

(declare-fun mapValue!8480 () ValueCell!2127)

(declare-fun mapRest!8480 () (Array (_ BitVec 32) ValueCell!2127))

(declare-fun mapKey!8480 () (_ BitVec 32))

(assert (=> mapNonEmpty!8480 (= (arr!4304 _values!649) (store mapRest!8480 mapKey!8480 mapValue!8480))))

(declare-fun b!202122 () Bool)

(declare-fun res!96788 () Bool)

(assert (=> b!202122 (=> (not res!96788) (not e!132425))))

(declare-datatypes ((List!2740 0))(
  ( (Nil!2737) (Cons!2736 (h!3378 (_ BitVec 64)) (t!7679 List!2740)) )
))
(declare-fun arrayNoDuplicates!0 (array!9106 (_ BitVec 32) List!2740) Bool)

(assert (=> b!202122 (= res!96788 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2737))))

(declare-fun b!202123 () Bool)

(declare-fun res!96791 () Bool)

(assert (=> b!202123 (=> (not res!96791) (not e!132425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9106 (_ BitVec 32)) Bool)

(assert (=> b!202123 (= res!96791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202124 () Bool)

(declare-fun res!96785 () Bool)

(assert (=> b!202124 (=> (not res!96785) (not e!132425))))

(assert (=> b!202124 (= res!96785 (= (select (arr!4303 _keys!825) i!601) k0!843))))

(declare-fun res!96793 () Bool)

(assert (=> start!20438 (=> (not res!96793) (not e!132425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20438 (= res!96793 (validMask!0 mask!1149))))

(assert (=> start!20438 e!132425))

(declare-fun array_inv!2831 (array!9108) Bool)

(assert (=> start!20438 (and (array_inv!2831 _values!649) e!132424)))

(assert (=> start!20438 true))

(assert (=> start!20438 tp_is_empty!4941))

(declare-fun array_inv!2832 (array!9106) Bool)

(assert (=> start!20438 (array_inv!2832 _keys!825)))

(assert (=> start!20438 tp!18286))

(declare-fun b!202125 () Bool)

(declare-fun res!96786 () Bool)

(assert (=> b!202125 (=> (not res!96786) (not e!132425))))

(assert (=> b!202125 (= res!96786 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4628 _keys!825))))))

(assert (= (and start!20438 res!96793) b!202117))

(assert (= (and b!202117 res!96790) b!202123))

(assert (= (and b!202123 res!96791) b!202122))

(assert (= (and b!202122 res!96788) b!202125))

(assert (= (and b!202125 res!96786) b!202114))

(assert (= (and b!202114 res!96792) b!202124))

(assert (= (and b!202124 res!96785) b!202115))

(assert (= (and b!202115 (not res!96787)) b!202121))

(assert (= (and b!202121 (not res!96789)) b!202118))

(assert (= (and b!202120 condMapEmpty!8480) mapIsEmpty!8480))

(assert (= (and b!202120 (not condMapEmpty!8480)) mapNonEmpty!8480))

(get-info :version)

(assert (= (and mapNonEmpty!8480 ((_ is ValueCellFull!2127) mapValue!8480)) b!202116))

(assert (= (and b!202120 ((_ is ValueCellFull!2127) mapDefault!8480)) b!202119))

(assert (= start!20438 b!202120))

(declare-fun m!229381 () Bool)

(assert (=> b!202114 m!229381))

(declare-fun m!229383 () Bool)

(assert (=> b!202122 m!229383))

(declare-fun m!229385 () Bool)

(assert (=> start!20438 m!229385))

(declare-fun m!229387 () Bool)

(assert (=> start!20438 m!229387))

(declare-fun m!229389 () Bool)

(assert (=> start!20438 m!229389))

(declare-fun m!229391 () Bool)

(assert (=> b!202124 m!229391))

(declare-fun m!229393 () Bool)

(assert (=> mapNonEmpty!8480 m!229393))

(declare-fun m!229395 () Bool)

(assert (=> b!202115 m!229395))

(declare-fun m!229397 () Bool)

(assert (=> b!202115 m!229397))

(declare-fun m!229399 () Bool)

(assert (=> b!202115 m!229399))

(declare-fun m!229401 () Bool)

(assert (=> b!202115 m!229401))

(declare-fun m!229403 () Bool)

(assert (=> b!202115 m!229403))

(declare-fun m!229405 () Bool)

(assert (=> b!202115 m!229405))

(declare-fun m!229407 () Bool)

(assert (=> b!202115 m!229407))

(declare-fun m!229409 () Bool)

(assert (=> b!202121 m!229409))

(declare-fun m!229411 () Bool)

(assert (=> b!202121 m!229411))

(declare-fun m!229413 () Bool)

(assert (=> b!202121 m!229413))

(declare-fun m!229415 () Bool)

(assert (=> b!202121 m!229415))

(declare-fun m!229417 () Bool)

(assert (=> b!202121 m!229417))

(declare-fun m!229419 () Bool)

(assert (=> b!202121 m!229419))

(declare-fun m!229421 () Bool)

(assert (=> b!202121 m!229421))

(assert (=> b!202121 m!229421))

(declare-fun m!229423 () Bool)

(assert (=> b!202121 m!229423))

(declare-fun m!229425 () Bool)

(assert (=> b!202123 m!229425))

(declare-fun m!229427 () Bool)

(assert (=> b!202118 m!229427))

(declare-fun m!229429 () Bool)

(assert (=> b!202118 m!229429))

(declare-fun m!229431 () Bool)

(assert (=> b!202118 m!229431))

(check-sat (not mapNonEmpty!8480) (not b!202115) (not start!20438) b_and!11849 tp_is_empty!4941 (not b!202121) (not b_next!5085) (not b!202122) (not b!202123) (not b!202114) (not b!202118))
(check-sat b_and!11849 (not b_next!5085))
