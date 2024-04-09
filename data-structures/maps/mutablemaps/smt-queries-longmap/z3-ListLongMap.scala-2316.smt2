; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37368 () Bool)

(assert start!37368)

(declare-fun b_free!8487 () Bool)

(declare-fun b_next!8487 () Bool)

(assert (=> start!37368 (= b_free!8487 (not b_next!8487))))

(declare-fun tp!30176 () Bool)

(declare-fun b_and!15747 () Bool)

(assert (=> start!37368 (= tp!30176 b_and!15747)))

(declare-fun b!379215 () Bool)

(declare-fun e!230735 () Bool)

(declare-fun e!230734 () Bool)

(declare-fun mapRes!15267 () Bool)

(assert (=> b!379215 (= e!230735 (and e!230734 mapRes!15267))))

(declare-fun condMapEmpty!15267 () Bool)

(declare-datatypes ((V!13285 0))(
  ( (V!13286 (val!4612 Int)) )
))
(declare-datatypes ((ValueCell!4224 0))(
  ( (ValueCellFull!4224 (v!6805 V!13285)) (EmptyCell!4224) )
))
(declare-datatypes ((array!22167 0))(
  ( (array!22168 (arr!10549 (Array (_ BitVec 32) ValueCell!4224)) (size!10901 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22167)

(declare-fun mapDefault!15267 () ValueCell!4224)

(assert (=> b!379215 (= condMapEmpty!15267 (= (arr!10549 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4224)) mapDefault!15267)))))

(declare-fun b!379216 () Bool)

(declare-fun res!215079 () Bool)

(declare-fun e!230739 () Bool)

(assert (=> b!379216 (=> (not res!215079) (not e!230739))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22169 0))(
  ( (array!22170 (arr!10550 (Array (_ BitVec 32) (_ BitVec 64))) (size!10902 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22169)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!379216 (= res!215079 (and (= (size!10901 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10902 _keys!658) (size!10901 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!215082 () Bool)

(assert (=> start!37368 (=> (not res!215082) (not e!230739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37368 (= res!215082 (validMask!0 mask!970))))

(assert (=> start!37368 e!230739))

(declare-fun array_inv!7762 (array!22167) Bool)

(assert (=> start!37368 (and (array_inv!7762 _values!506) e!230735)))

(assert (=> start!37368 tp!30176))

(assert (=> start!37368 true))

(declare-fun tp_is_empty!9135 () Bool)

(assert (=> start!37368 tp_is_empty!9135))

(declare-fun array_inv!7763 (array!22169) Bool)

(assert (=> start!37368 (array_inv!7763 _keys!658)))

(declare-fun b!379217 () Bool)

(declare-fun e!230737 () Bool)

(assert (=> b!379217 (= e!230737 true)))

(declare-datatypes ((tuple2!6136 0))(
  ( (tuple2!6137 (_1!3078 (_ BitVec 64)) (_2!3078 V!13285)) )
))
(declare-datatypes ((List!6009 0))(
  ( (Nil!6006) (Cons!6005 (h!6861 tuple2!6136) (t!11167 List!6009)) )
))
(declare-datatypes ((ListLongMap!5063 0))(
  ( (ListLongMap!5064 (toList!2547 List!6009)) )
))
(declare-fun lt!177122 () ListLongMap!5063)

(declare-fun lt!177125 () ListLongMap!5063)

(declare-fun lt!177124 () tuple2!6136)

(declare-fun +!888 (ListLongMap!5063 tuple2!6136) ListLongMap!5063)

(assert (=> b!379217 (= lt!177122 (+!888 lt!177125 lt!177124))))

(declare-fun v!373 () V!13285)

(declare-fun minValue!472 () V!13285)

(declare-datatypes ((Unit!11671 0))(
  ( (Unit!11672) )
))
(declare-fun lt!177131 () Unit!11671)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!177133 () ListLongMap!5063)

(declare-fun addCommutativeForDiffKeys!301 (ListLongMap!5063 (_ BitVec 64) V!13285 (_ BitVec 64) V!13285) Unit!11671)

(assert (=> b!379217 (= lt!177131 (addCommutativeForDiffKeys!301 lt!177133 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379218 () Bool)

(declare-fun res!215090 () Bool)

(assert (=> b!379218 (=> (not res!215090) (not e!230739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379218 (= res!215090 (validKeyInArray!0 k0!778))))

(declare-fun b!379219 () Bool)

(declare-fun res!215083 () Bool)

(assert (=> b!379219 (=> (not res!215083) (not e!230739))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379219 (= res!215083 (or (= (select (arr!10550 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10550 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15267 () Bool)

(declare-fun tp!30177 () Bool)

(declare-fun e!230736 () Bool)

(assert (=> mapNonEmpty!15267 (= mapRes!15267 (and tp!30177 e!230736))))

(declare-fun mapRest!15267 () (Array (_ BitVec 32) ValueCell!4224))

(declare-fun mapValue!15267 () ValueCell!4224)

(declare-fun mapKey!15267 () (_ BitVec 32))

(assert (=> mapNonEmpty!15267 (= (arr!10549 _values!506) (store mapRest!15267 mapKey!15267 mapValue!15267))))

(declare-fun b!379220 () Bool)

(declare-fun res!215087 () Bool)

(assert (=> b!379220 (=> (not res!215087) (not e!230739))))

(declare-datatypes ((List!6010 0))(
  ( (Nil!6007) (Cons!6006 (h!6862 (_ BitVec 64)) (t!11168 List!6010)) )
))
(declare-fun arrayNoDuplicates!0 (array!22169 (_ BitVec 32) List!6010) Bool)

(assert (=> b!379220 (= res!215087 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6007))))

(declare-fun mapIsEmpty!15267 () Bool)

(assert (=> mapIsEmpty!15267 mapRes!15267))

(declare-fun b!379221 () Bool)

(declare-fun e!230732 () Bool)

(assert (=> b!379221 (= e!230732 e!230737)))

(declare-fun res!215081 () Bool)

(assert (=> b!379221 (=> res!215081 e!230737)))

(assert (=> b!379221 (= res!215081 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177130 () ListLongMap!5063)

(assert (=> b!379221 (= lt!177130 lt!177125)))

(declare-fun lt!177123 () tuple2!6136)

(assert (=> b!379221 (= lt!177125 (+!888 lt!177133 lt!177123))))

(declare-fun lt!177132 () ListLongMap!5063)

(assert (=> b!379221 (= lt!177132 lt!177122)))

(declare-fun lt!177128 () ListLongMap!5063)

(assert (=> b!379221 (= lt!177122 (+!888 lt!177128 lt!177123))))

(declare-fun lt!177126 () ListLongMap!5063)

(assert (=> b!379221 (= lt!177132 (+!888 lt!177126 lt!177123))))

(assert (=> b!379221 (= lt!177123 (tuple2!6137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379222 () Bool)

(assert (=> b!379222 (= e!230734 tp_is_empty!9135)))

(declare-fun b!379223 () Bool)

(declare-fun e!230738 () Bool)

(assert (=> b!379223 (= e!230739 e!230738)))

(declare-fun res!215084 () Bool)

(assert (=> b!379223 (=> (not res!215084) (not e!230738))))

(declare-fun lt!177127 () array!22169)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22169 (_ BitVec 32)) Bool)

(assert (=> b!379223 (= res!215084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177127 mask!970))))

(assert (=> b!379223 (= lt!177127 (array!22170 (store (arr!10550 _keys!658) i!548 k0!778) (size!10902 _keys!658)))))

(declare-fun b!379224 () Bool)

(declare-fun res!215085 () Bool)

(assert (=> b!379224 (=> (not res!215085) (not e!230739))))

(assert (=> b!379224 (= res!215085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379225 () Bool)

(assert (=> b!379225 (= e!230738 (not e!230732))))

(declare-fun res!215086 () Bool)

(assert (=> b!379225 (=> res!215086 e!230732)))

(assert (=> b!379225 (= res!215086 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13285)

(declare-fun getCurrentListMap!1975 (array!22169 array!22167 (_ BitVec 32) (_ BitVec 32) V!13285 V!13285 (_ BitVec 32) Int) ListLongMap!5063)

(assert (=> b!379225 (= lt!177130 (getCurrentListMap!1975 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177129 () array!22167)

(assert (=> b!379225 (= lt!177132 (getCurrentListMap!1975 lt!177127 lt!177129 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379225 (and (= lt!177126 lt!177128) (= lt!177128 lt!177126))))

(assert (=> b!379225 (= lt!177128 (+!888 lt!177133 lt!177124))))

(assert (=> b!379225 (= lt!177124 (tuple2!6137 k0!778 v!373))))

(declare-fun lt!177121 () Unit!11671)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!126 (array!22169 array!22167 (_ BitVec 32) (_ BitVec 32) V!13285 V!13285 (_ BitVec 32) (_ BitVec 64) V!13285 (_ BitVec 32) Int) Unit!11671)

(assert (=> b!379225 (= lt!177121 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!126 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!793 (array!22169 array!22167 (_ BitVec 32) (_ BitVec 32) V!13285 V!13285 (_ BitVec 32) Int) ListLongMap!5063)

(assert (=> b!379225 (= lt!177126 (getCurrentListMapNoExtraKeys!793 lt!177127 lt!177129 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379225 (= lt!177129 (array!22168 (store (arr!10549 _values!506) i!548 (ValueCellFull!4224 v!373)) (size!10901 _values!506)))))

(assert (=> b!379225 (= lt!177133 (getCurrentListMapNoExtraKeys!793 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379226 () Bool)

(declare-fun res!215080 () Bool)

(assert (=> b!379226 (=> (not res!215080) (not e!230739))))

(assert (=> b!379226 (= res!215080 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10902 _keys!658))))))

(declare-fun b!379227 () Bool)

(declare-fun res!215089 () Bool)

(assert (=> b!379227 (=> (not res!215089) (not e!230739))))

(declare-fun arrayContainsKey!0 (array!22169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379227 (= res!215089 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379228 () Bool)

(assert (=> b!379228 (= e!230736 tp_is_empty!9135)))

(declare-fun b!379229 () Bool)

(declare-fun res!215088 () Bool)

(assert (=> b!379229 (=> (not res!215088) (not e!230738))))

(assert (=> b!379229 (= res!215088 (arrayNoDuplicates!0 lt!177127 #b00000000000000000000000000000000 Nil!6007))))

(assert (= (and start!37368 res!215082) b!379216))

(assert (= (and b!379216 res!215079) b!379224))

(assert (= (and b!379224 res!215085) b!379220))

(assert (= (and b!379220 res!215087) b!379226))

(assert (= (and b!379226 res!215080) b!379218))

(assert (= (and b!379218 res!215090) b!379219))

(assert (= (and b!379219 res!215083) b!379227))

(assert (= (and b!379227 res!215089) b!379223))

(assert (= (and b!379223 res!215084) b!379229))

(assert (= (and b!379229 res!215088) b!379225))

(assert (= (and b!379225 (not res!215086)) b!379221))

(assert (= (and b!379221 (not res!215081)) b!379217))

(assert (= (and b!379215 condMapEmpty!15267) mapIsEmpty!15267))

(assert (= (and b!379215 (not condMapEmpty!15267)) mapNonEmpty!15267))

(get-info :version)

(assert (= (and mapNonEmpty!15267 ((_ is ValueCellFull!4224) mapValue!15267)) b!379228))

(assert (= (and b!379215 ((_ is ValueCellFull!4224) mapDefault!15267)) b!379222))

(assert (= start!37368 b!379215))

(declare-fun m!376133 () Bool)

(assert (=> b!379224 m!376133))

(declare-fun m!376135 () Bool)

(assert (=> b!379217 m!376135))

(declare-fun m!376137 () Bool)

(assert (=> b!379217 m!376137))

(declare-fun m!376139 () Bool)

(assert (=> b!379223 m!376139))

(declare-fun m!376141 () Bool)

(assert (=> b!379223 m!376141))

(declare-fun m!376143 () Bool)

(assert (=> mapNonEmpty!15267 m!376143))

(declare-fun m!376145 () Bool)

(assert (=> b!379221 m!376145))

(declare-fun m!376147 () Bool)

(assert (=> b!379221 m!376147))

(declare-fun m!376149 () Bool)

(assert (=> b!379221 m!376149))

(declare-fun m!376151 () Bool)

(assert (=> b!379219 m!376151))

(declare-fun m!376153 () Bool)

(assert (=> b!379220 m!376153))

(declare-fun m!376155 () Bool)

(assert (=> b!379229 m!376155))

(declare-fun m!376157 () Bool)

(assert (=> b!379225 m!376157))

(declare-fun m!376159 () Bool)

(assert (=> b!379225 m!376159))

(declare-fun m!376161 () Bool)

(assert (=> b!379225 m!376161))

(declare-fun m!376163 () Bool)

(assert (=> b!379225 m!376163))

(declare-fun m!376165 () Bool)

(assert (=> b!379225 m!376165))

(declare-fun m!376167 () Bool)

(assert (=> b!379225 m!376167))

(declare-fun m!376169 () Bool)

(assert (=> b!379225 m!376169))

(declare-fun m!376171 () Bool)

(assert (=> b!379227 m!376171))

(declare-fun m!376173 () Bool)

(assert (=> start!37368 m!376173))

(declare-fun m!376175 () Bool)

(assert (=> start!37368 m!376175))

(declare-fun m!376177 () Bool)

(assert (=> start!37368 m!376177))

(declare-fun m!376179 () Bool)

(assert (=> b!379218 m!376179))

(check-sat (not b!379223) (not b!379221) (not b!379229) (not b!379224) (not b!379218) (not b!379225) (not b!379217) tp_is_empty!9135 (not b!379220) (not b_next!8487) b_and!15747 (not mapNonEmpty!15267) (not b!379227) (not start!37368))
(check-sat b_and!15747 (not b_next!8487))
