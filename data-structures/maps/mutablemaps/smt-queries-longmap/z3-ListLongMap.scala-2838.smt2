; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41002 () Bool)

(assert start!41002)

(declare-fun b_free!10929 () Bool)

(declare-fun b_next!10929 () Bool)

(assert (=> start!41002 (= b_free!10929 (not b_next!10929))))

(declare-fun tp!38614 () Bool)

(declare-fun b_and!19089 () Bool)

(assert (=> start!41002 (= tp!38614 b_and!19089)))

(declare-fun b!456346 () Bool)

(declare-fun e!266625 () Bool)

(declare-fun tp_is_empty!12267 () Bool)

(assert (=> b!456346 (= e!266625 tp_is_empty!12267)))

(declare-fun b!456347 () Bool)

(declare-fun res!272413 () Bool)

(declare-fun e!266624 () Bool)

(assert (=> b!456347 (=> (not res!272413) (not e!266624))))

(declare-datatypes ((array!28301 0))(
  ( (array!28302 (arr!13591 (Array (_ BitVec 32) (_ BitVec 64))) (size!13943 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28301)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456347 (= res!272413 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!456348 () Bool)

(declare-fun e!266623 () Bool)

(assert (=> b!456348 (= e!266623 (not true))))

(declare-datatypes ((V!17461 0))(
  ( (V!17462 (val!6178 Int)) )
))
(declare-fun minValue!515 () V!17461)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5790 0))(
  ( (ValueCellFull!5790 (v!8440 V!17461)) (EmptyCell!5790) )
))
(declare-datatypes ((array!28303 0))(
  ( (array!28304 (arr!13592 (Array (_ BitVec 32) ValueCell!5790)) (size!13944 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28303)

(declare-fun lt!206543 () array!28301)

(declare-fun v!412 () V!17461)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!206544 () array!28303)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17461)

(declare-datatypes ((tuple2!8096 0))(
  ( (tuple2!8097 (_1!4058 (_ BitVec 64)) (_2!4058 V!17461)) )
))
(declare-datatypes ((List!8203 0))(
  ( (Nil!8200) (Cons!8199 (h!9055 tuple2!8096) (t!14039 List!8203)) )
))
(declare-datatypes ((ListLongMap!7023 0))(
  ( (ListLongMap!7024 (toList!3527 List!8203)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1703 (array!28301 array!28303 (_ BitVec 32) (_ BitVec 32) V!17461 V!17461 (_ BitVec 32) Int) ListLongMap!7023)

(declare-fun +!1550 (ListLongMap!7023 tuple2!8096) ListLongMap!7023)

(assert (=> b!456348 (= (getCurrentListMapNoExtraKeys!1703 lt!206543 lt!206544 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1550 (getCurrentListMapNoExtraKeys!1703 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8097 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13225 0))(
  ( (Unit!13226) )
))
(declare-fun lt!206546 () Unit!13225)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!715 (array!28301 array!28303 (_ BitVec 32) (_ BitVec 32) V!17461 V!17461 (_ BitVec 32) (_ BitVec 64) V!17461 (_ BitVec 32) Int) Unit!13225)

(assert (=> b!456348 (= lt!206546 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!715 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456349 () Bool)

(declare-fun res!272407 () Bool)

(assert (=> b!456349 (=> (not res!272407) (not e!266624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456349 (= res!272407 (validKeyInArray!0 k0!794))))

(declare-fun b!456350 () Bool)

(declare-fun res!272408 () Bool)

(declare-fun e!266626 () Bool)

(assert (=> b!456350 (=> (not res!272408) (not e!266626))))

(declare-datatypes ((List!8204 0))(
  ( (Nil!8201) (Cons!8200 (h!9056 (_ BitVec 64)) (t!14040 List!8204)) )
))
(declare-fun arrayNoDuplicates!0 (array!28301 (_ BitVec 32) List!8204) Bool)

(assert (=> b!456350 (= res!272408 (arrayNoDuplicates!0 lt!206543 #b00000000000000000000000000000000 Nil!8201))))

(declare-fun b!456352 () Bool)

(assert (=> b!456352 (= e!266624 e!266626)))

(declare-fun res!272415 () Bool)

(assert (=> b!456352 (=> (not res!272415) (not e!266626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28301 (_ BitVec 32)) Bool)

(assert (=> b!456352 (= res!272415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206543 mask!1025))))

(assert (=> b!456352 (= lt!206543 (array!28302 (store (arr!13591 _keys!709) i!563 k0!794) (size!13943 _keys!709)))))

(declare-fun b!456353 () Bool)

(declare-fun e!266621 () Bool)

(declare-fun e!266627 () Bool)

(declare-fun mapRes!20041 () Bool)

(assert (=> b!456353 (= e!266621 (and e!266627 mapRes!20041))))

(declare-fun condMapEmpty!20041 () Bool)

(declare-fun mapDefault!20041 () ValueCell!5790)

(assert (=> b!456353 (= condMapEmpty!20041 (= (arr!13592 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5790)) mapDefault!20041)))))

(declare-fun b!456354 () Bool)

(declare-fun res!272417 () Bool)

(assert (=> b!456354 (=> (not res!272417) (not e!266626))))

(assert (=> b!456354 (= res!272417 (bvsle from!863 i!563))))

(declare-fun b!456355 () Bool)

(declare-fun res!272412 () Bool)

(assert (=> b!456355 (=> (not res!272412) (not e!266624))))

(assert (=> b!456355 (= res!272412 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8201))))

(declare-fun b!456356 () Bool)

(declare-fun res!272406 () Bool)

(assert (=> b!456356 (=> (not res!272406) (not e!266624))))

(assert (=> b!456356 (= res!272406 (or (= (select (arr!13591 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13591 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20041 () Bool)

(declare-fun tp!38613 () Bool)

(assert (=> mapNonEmpty!20041 (= mapRes!20041 (and tp!38613 e!266625))))

(declare-fun mapValue!20041 () ValueCell!5790)

(declare-fun mapRest!20041 () (Array (_ BitVec 32) ValueCell!5790))

(declare-fun mapKey!20041 () (_ BitVec 32))

(assert (=> mapNonEmpty!20041 (= (arr!13592 _values!549) (store mapRest!20041 mapKey!20041 mapValue!20041))))

(declare-fun res!272414 () Bool)

(assert (=> start!41002 (=> (not res!272414) (not e!266624))))

(assert (=> start!41002 (= res!272414 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13943 _keys!709))))))

(assert (=> start!41002 e!266624))

(assert (=> start!41002 tp_is_empty!12267))

(assert (=> start!41002 tp!38614))

(assert (=> start!41002 true))

(declare-fun array_inv!9834 (array!28303) Bool)

(assert (=> start!41002 (and (array_inv!9834 _values!549) e!266621)))

(declare-fun array_inv!9835 (array!28301) Bool)

(assert (=> start!41002 (array_inv!9835 _keys!709)))

(declare-fun b!456351 () Bool)

(declare-fun res!272410 () Bool)

(assert (=> b!456351 (=> (not res!272410) (not e!266624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456351 (= res!272410 (validMask!0 mask!1025))))

(declare-fun b!456357 () Bool)

(declare-fun res!272409 () Bool)

(assert (=> b!456357 (=> (not res!272409) (not e!266624))))

(assert (=> b!456357 (= res!272409 (and (= (size!13944 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13943 _keys!709) (size!13944 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456358 () Bool)

(declare-fun res!272405 () Bool)

(assert (=> b!456358 (=> (not res!272405) (not e!266624))))

(assert (=> b!456358 (= res!272405 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13943 _keys!709))))))

(declare-fun b!456359 () Bool)

(declare-fun res!272416 () Bool)

(assert (=> b!456359 (=> (not res!272416) (not e!266624))))

(assert (=> b!456359 (= res!272416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456360 () Bool)

(assert (=> b!456360 (= e!266626 e!266623)))

(declare-fun res!272411 () Bool)

(assert (=> b!456360 (=> (not res!272411) (not e!266623))))

(assert (=> b!456360 (= res!272411 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206545 () ListLongMap!7023)

(assert (=> b!456360 (= lt!206545 (getCurrentListMapNoExtraKeys!1703 lt!206543 lt!206544 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!456360 (= lt!206544 (array!28304 (store (arr!13592 _values!549) i!563 (ValueCellFull!5790 v!412)) (size!13944 _values!549)))))

(declare-fun lt!206547 () ListLongMap!7023)

(assert (=> b!456360 (= lt!206547 (getCurrentListMapNoExtraKeys!1703 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456361 () Bool)

(assert (=> b!456361 (= e!266627 tp_is_empty!12267)))

(declare-fun mapIsEmpty!20041 () Bool)

(assert (=> mapIsEmpty!20041 mapRes!20041))

(assert (= (and start!41002 res!272414) b!456351))

(assert (= (and b!456351 res!272410) b!456357))

(assert (= (and b!456357 res!272409) b!456359))

(assert (= (and b!456359 res!272416) b!456355))

(assert (= (and b!456355 res!272412) b!456358))

(assert (= (and b!456358 res!272405) b!456349))

(assert (= (and b!456349 res!272407) b!456356))

(assert (= (and b!456356 res!272406) b!456347))

(assert (= (and b!456347 res!272413) b!456352))

(assert (= (and b!456352 res!272415) b!456350))

(assert (= (and b!456350 res!272408) b!456354))

(assert (= (and b!456354 res!272417) b!456360))

(assert (= (and b!456360 res!272411) b!456348))

(assert (= (and b!456353 condMapEmpty!20041) mapIsEmpty!20041))

(assert (= (and b!456353 (not condMapEmpty!20041)) mapNonEmpty!20041))

(get-info :version)

(assert (= (and mapNonEmpty!20041 ((_ is ValueCellFull!5790) mapValue!20041)) b!456346))

(assert (= (and b!456353 ((_ is ValueCellFull!5790) mapDefault!20041)) b!456361))

(assert (= start!41002 b!456353))

(declare-fun m!439823 () Bool)

(assert (=> b!456356 m!439823))

(declare-fun m!439825 () Bool)

(assert (=> b!456348 m!439825))

(declare-fun m!439827 () Bool)

(assert (=> b!456348 m!439827))

(assert (=> b!456348 m!439827))

(declare-fun m!439829 () Bool)

(assert (=> b!456348 m!439829))

(declare-fun m!439831 () Bool)

(assert (=> b!456348 m!439831))

(declare-fun m!439833 () Bool)

(assert (=> b!456351 m!439833))

(declare-fun m!439835 () Bool)

(assert (=> b!456355 m!439835))

(declare-fun m!439837 () Bool)

(assert (=> start!41002 m!439837))

(declare-fun m!439839 () Bool)

(assert (=> start!41002 m!439839))

(declare-fun m!439841 () Bool)

(assert (=> b!456359 m!439841))

(declare-fun m!439843 () Bool)

(assert (=> b!456352 m!439843))

(declare-fun m!439845 () Bool)

(assert (=> b!456352 m!439845))

(declare-fun m!439847 () Bool)

(assert (=> b!456347 m!439847))

(declare-fun m!439849 () Bool)

(assert (=> b!456350 m!439849))

(declare-fun m!439851 () Bool)

(assert (=> mapNonEmpty!20041 m!439851))

(declare-fun m!439853 () Bool)

(assert (=> b!456360 m!439853))

(declare-fun m!439855 () Bool)

(assert (=> b!456360 m!439855))

(declare-fun m!439857 () Bool)

(assert (=> b!456360 m!439857))

(declare-fun m!439859 () Bool)

(assert (=> b!456349 m!439859))

(check-sat (not b!456360) (not start!41002) (not b!456355) (not b!456351) (not mapNonEmpty!20041) b_and!19089 (not b!456352) (not b!456349) (not b!456347) tp_is_empty!12267 (not b!456350) (not b_next!10929) (not b!456348) (not b!456359))
(check-sat b_and!19089 (not b_next!10929))
