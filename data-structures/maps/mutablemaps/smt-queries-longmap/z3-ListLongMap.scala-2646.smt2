; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39704 () Bool)

(assert start!39704)

(declare-fun b_free!9963 () Bool)

(declare-fun b_next!9963 () Bool)

(assert (=> start!39704 (= b_free!9963 (not b_next!9963))))

(declare-fun tp!35418 () Bool)

(declare-fun b_and!17637 () Bool)

(assert (=> start!39704 (= tp!35418 b_and!17637)))

(declare-fun b!426332 () Bool)

(declare-fun res!249932 () Bool)

(declare-fun e!252931 () Bool)

(assert (=> b!426332 (=> (not res!249932) (not e!252931))))

(declare-datatypes ((array!26055 0))(
  ( (array!26056 (arr!12474 (Array (_ BitVec 32) (_ BitVec 64))) (size!12826 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26055)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26055 (_ BitVec 32)) Bool)

(assert (=> b!426332 (= res!249932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426333 () Bool)

(declare-fun res!249924 () Bool)

(assert (=> b!426333 (=> (not res!249924) (not e!252931))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426333 (= res!249924 (validKeyInArray!0 k0!794))))

(declare-fun b!426334 () Bool)

(declare-fun res!249928 () Bool)

(assert (=> b!426334 (=> (not res!249928) (not e!252931))))

(declare-datatypes ((List!7349 0))(
  ( (Nil!7346) (Cons!7345 (h!8201 (_ BitVec 64)) (t!12801 List!7349)) )
))
(declare-fun arrayNoDuplicates!0 (array!26055 (_ BitVec 32) List!7349) Bool)

(assert (=> b!426334 (= res!249928 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7346))))

(declare-fun mapNonEmpty!18294 () Bool)

(declare-fun mapRes!18294 () Bool)

(declare-fun tp!35417 () Bool)

(declare-fun e!252935 () Bool)

(assert (=> mapNonEmpty!18294 (= mapRes!18294 (and tp!35417 e!252935))))

(declare-datatypes ((V!15925 0))(
  ( (V!15926 (val!5602 Int)) )
))
(declare-datatypes ((ValueCell!5214 0))(
  ( (ValueCellFull!5214 (v!7845 V!15925)) (EmptyCell!5214) )
))
(declare-fun mapRest!18294 () (Array (_ BitVec 32) ValueCell!5214))

(declare-datatypes ((array!26057 0))(
  ( (array!26058 (arr!12475 (Array (_ BitVec 32) ValueCell!5214)) (size!12827 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26057)

(declare-fun mapKey!18294 () (_ BitVec 32))

(declare-fun mapValue!18294 () ValueCell!5214)

(assert (=> mapNonEmpty!18294 (= (arr!12475 _values!549) (store mapRest!18294 mapKey!18294 mapValue!18294))))

(declare-fun b!426335 () Bool)

(declare-fun e!252932 () Bool)

(declare-fun e!252934 () Bool)

(assert (=> b!426335 (= e!252932 e!252934)))

(declare-fun res!249925 () Bool)

(assert (=> b!426335 (=> (not res!249925) (not e!252934))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426335 (= res!249925 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15925)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15925)

(declare-fun lt!194952 () array!26057)

(declare-datatypes ((tuple2!7300 0))(
  ( (tuple2!7301 (_1!3660 (_ BitVec 64)) (_2!3660 V!15925)) )
))
(declare-datatypes ((List!7350 0))(
  ( (Nil!7347) (Cons!7346 (h!8202 tuple2!7300) (t!12802 List!7350)) )
))
(declare-datatypes ((ListLongMap!6227 0))(
  ( (ListLongMap!6228 (toList!3129 List!7350)) )
))
(declare-fun lt!194953 () ListLongMap!6227)

(declare-fun lt!194951 () array!26055)

(declare-fun getCurrentListMapNoExtraKeys!1330 (array!26055 array!26057 (_ BitVec 32) (_ BitVec 32) V!15925 V!15925 (_ BitVec 32) Int) ListLongMap!6227)

(assert (=> b!426335 (= lt!194953 (getCurrentListMapNoExtraKeys!1330 lt!194951 lt!194952 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15925)

(assert (=> b!426335 (= lt!194952 (array!26058 (store (arr!12475 _values!549) i!563 (ValueCellFull!5214 v!412)) (size!12827 _values!549)))))

(declare-fun lt!194955 () ListLongMap!6227)

(assert (=> b!426335 (= lt!194955 (getCurrentListMapNoExtraKeys!1330 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426336 () Bool)

(declare-fun res!249931 () Bool)

(assert (=> b!426336 (=> (not res!249931) (not e!252931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426336 (= res!249931 (validMask!0 mask!1025))))

(declare-fun b!426337 () Bool)

(assert (=> b!426337 (= e!252931 e!252932)))

(declare-fun res!249929 () Bool)

(assert (=> b!426337 (=> (not res!249929) (not e!252932))))

(assert (=> b!426337 (= res!249929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194951 mask!1025))))

(assert (=> b!426337 (= lt!194951 (array!26056 (store (arr!12474 _keys!709) i!563 k0!794) (size!12826 _keys!709)))))

(declare-fun res!249927 () Bool)

(assert (=> start!39704 (=> (not res!249927) (not e!252931))))

(assert (=> start!39704 (= res!249927 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12826 _keys!709))))))

(assert (=> start!39704 e!252931))

(declare-fun tp_is_empty!11115 () Bool)

(assert (=> start!39704 tp_is_empty!11115))

(assert (=> start!39704 tp!35418))

(assert (=> start!39704 true))

(declare-fun e!252936 () Bool)

(declare-fun array_inv!9086 (array!26057) Bool)

(assert (=> start!39704 (and (array_inv!9086 _values!549) e!252936)))

(declare-fun array_inv!9087 (array!26055) Bool)

(assert (=> start!39704 (array_inv!9087 _keys!709)))

(declare-fun b!426338 () Bool)

(declare-fun res!249926 () Bool)

(assert (=> b!426338 (=> (not res!249926) (not e!252932))))

(assert (=> b!426338 (= res!249926 (bvsle from!863 i!563))))

(declare-fun b!426339 () Bool)

(declare-fun res!249930 () Bool)

(assert (=> b!426339 (=> (not res!249930) (not e!252931))))

(assert (=> b!426339 (= res!249930 (or (= (select (arr!12474 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12474 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426340 () Bool)

(declare-fun res!249936 () Bool)

(assert (=> b!426340 (=> (not res!249936) (not e!252931))))

(assert (=> b!426340 (= res!249936 (and (= (size!12827 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12826 _keys!709) (size!12827 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18294 () Bool)

(assert (=> mapIsEmpty!18294 mapRes!18294))

(declare-fun b!426341 () Bool)

(declare-fun e!252933 () Bool)

(assert (=> b!426341 (= e!252936 (and e!252933 mapRes!18294))))

(declare-fun condMapEmpty!18294 () Bool)

(declare-fun mapDefault!18294 () ValueCell!5214)

(assert (=> b!426341 (= condMapEmpty!18294 (= (arr!12475 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5214)) mapDefault!18294)))))

(declare-fun b!426342 () Bool)

(declare-fun res!249935 () Bool)

(assert (=> b!426342 (=> (not res!249935) (not e!252931))))

(assert (=> b!426342 (= res!249935 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12826 _keys!709))))))

(declare-fun b!426343 () Bool)

(declare-fun res!249934 () Bool)

(assert (=> b!426343 (=> (not res!249934) (not e!252932))))

(assert (=> b!426343 (= res!249934 (arrayNoDuplicates!0 lt!194951 #b00000000000000000000000000000000 Nil!7346))))

(declare-fun b!426344 () Bool)

(assert (=> b!426344 (= e!252934 (not true))))

(declare-fun +!1285 (ListLongMap!6227 tuple2!7300) ListLongMap!6227)

(assert (=> b!426344 (= (getCurrentListMapNoExtraKeys!1330 lt!194951 lt!194952 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1285 (getCurrentListMapNoExtraKeys!1330 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7301 k0!794 v!412)))))

(declare-datatypes ((Unit!12473 0))(
  ( (Unit!12474) )
))
(declare-fun lt!194954 () Unit!12473)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!487 (array!26055 array!26057 (_ BitVec 32) (_ BitVec 32) V!15925 V!15925 (_ BitVec 32) (_ BitVec 64) V!15925 (_ BitVec 32) Int) Unit!12473)

(assert (=> b!426344 (= lt!194954 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!487 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426345 () Bool)

(assert (=> b!426345 (= e!252935 tp_is_empty!11115)))

(declare-fun b!426346 () Bool)

(declare-fun res!249933 () Bool)

(assert (=> b!426346 (=> (not res!249933) (not e!252931))))

(declare-fun arrayContainsKey!0 (array!26055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426346 (= res!249933 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426347 () Bool)

(assert (=> b!426347 (= e!252933 tp_is_empty!11115)))

(assert (= (and start!39704 res!249927) b!426336))

(assert (= (and b!426336 res!249931) b!426340))

(assert (= (and b!426340 res!249936) b!426332))

(assert (= (and b!426332 res!249932) b!426334))

(assert (= (and b!426334 res!249928) b!426342))

(assert (= (and b!426342 res!249935) b!426333))

(assert (= (and b!426333 res!249924) b!426339))

(assert (= (and b!426339 res!249930) b!426346))

(assert (= (and b!426346 res!249933) b!426337))

(assert (= (and b!426337 res!249929) b!426343))

(assert (= (and b!426343 res!249934) b!426338))

(assert (= (and b!426338 res!249926) b!426335))

(assert (= (and b!426335 res!249925) b!426344))

(assert (= (and b!426341 condMapEmpty!18294) mapIsEmpty!18294))

(assert (= (and b!426341 (not condMapEmpty!18294)) mapNonEmpty!18294))

(get-info :version)

(assert (= (and mapNonEmpty!18294 ((_ is ValueCellFull!5214) mapValue!18294)) b!426345))

(assert (= (and b!426341 ((_ is ValueCellFull!5214) mapDefault!18294)) b!426347))

(assert (= start!39704 b!426341))

(declare-fun m!415041 () Bool)

(assert (=> b!426337 m!415041))

(declare-fun m!415043 () Bool)

(assert (=> b!426337 m!415043))

(declare-fun m!415045 () Bool)

(assert (=> b!426335 m!415045))

(declare-fun m!415047 () Bool)

(assert (=> b!426335 m!415047))

(declare-fun m!415049 () Bool)

(assert (=> b!426335 m!415049))

(declare-fun m!415051 () Bool)

(assert (=> b!426344 m!415051))

(declare-fun m!415053 () Bool)

(assert (=> b!426344 m!415053))

(assert (=> b!426344 m!415053))

(declare-fun m!415055 () Bool)

(assert (=> b!426344 m!415055))

(declare-fun m!415057 () Bool)

(assert (=> b!426344 m!415057))

(declare-fun m!415059 () Bool)

(assert (=> b!426346 m!415059))

(declare-fun m!415061 () Bool)

(assert (=> b!426339 m!415061))

(declare-fun m!415063 () Bool)

(assert (=> start!39704 m!415063))

(declare-fun m!415065 () Bool)

(assert (=> start!39704 m!415065))

(declare-fun m!415067 () Bool)

(assert (=> b!426333 m!415067))

(declare-fun m!415069 () Bool)

(assert (=> mapNonEmpty!18294 m!415069))

(declare-fun m!415071 () Bool)

(assert (=> b!426332 m!415071))

(declare-fun m!415073 () Bool)

(assert (=> b!426343 m!415073))

(declare-fun m!415075 () Bool)

(assert (=> b!426336 m!415075))

(declare-fun m!415077 () Bool)

(assert (=> b!426334 m!415077))

(check-sat (not b!426334) (not b!426333) (not b!426346) (not b!426335) (not b!426336) (not start!39704) (not b!426332) (not b!426344) (not b!426337) tp_is_empty!11115 (not b!426343) (not b_next!9963) b_and!17637 (not mapNonEmpty!18294))
(check-sat b_and!17637 (not b_next!9963))
