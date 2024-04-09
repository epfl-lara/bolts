; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77676 () Bool)

(assert start!77676)

(declare-fun b_free!16233 () Bool)

(declare-fun b_next!16233 () Bool)

(assert (=> start!77676 (= b_free!16233 (not b_next!16233))))

(declare-fun tp!56961 () Bool)

(declare-fun b_and!26637 () Bool)

(assert (=> start!77676 (= tp!56961 b_and!26637)))

(declare-fun b!905137 () Bool)

(declare-fun res!610897 () Bool)

(declare-fun e!507239 () Bool)

(assert (=> b!905137 (=> (not res!610897) (not e!507239))))

(declare-datatypes ((array!53332 0))(
  ( (array!53333 (arr!25621 (Array (_ BitVec 32) (_ BitVec 64))) (size!26081 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53332)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53332 (_ BitVec 32)) Bool)

(assert (=> b!905137 (= res!610897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905138 () Bool)

(declare-fun e!507242 () Bool)

(declare-fun tp_is_empty!18651 () Bool)

(assert (=> b!905138 (= e!507242 tp_is_empty!18651)))

(declare-fun b!905139 () Bool)

(declare-fun res!610899 () Bool)

(declare-fun e!507243 () Bool)

(assert (=> b!905139 (=> (not res!610899) (not e!507243))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!905139 (= res!610899 (and (= (select (arr!25621 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905140 () Bool)

(declare-fun e!507244 () Bool)

(declare-fun e!507241 () Bool)

(declare-fun mapRes!29689 () Bool)

(assert (=> b!905140 (= e!507244 (and e!507241 mapRes!29689))))

(declare-fun condMapEmpty!29689 () Bool)

(declare-datatypes ((V!29833 0))(
  ( (V!29834 (val!9376 Int)) )
))
(declare-datatypes ((ValueCell!8844 0))(
  ( (ValueCellFull!8844 (v!11881 V!29833)) (EmptyCell!8844) )
))
(declare-datatypes ((array!53334 0))(
  ( (array!53335 (arr!25622 (Array (_ BitVec 32) ValueCell!8844)) (size!26082 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53334)

(declare-fun mapDefault!29689 () ValueCell!8844)

(assert (=> b!905140 (= condMapEmpty!29689 (= (arr!25622 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8844)) mapDefault!29689)))))

(declare-fun b!905141 () Bool)

(declare-fun res!610894 () Bool)

(assert (=> b!905141 (=> (not res!610894) (not e!507239))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!905141 (= res!610894 (and (= (size!26082 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26081 _keys!1386) (size!26082 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!610900 () Bool)

(assert (=> start!77676 (=> (not res!610900) (not e!507239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77676 (= res!610900 (validMask!0 mask!1756))))

(assert (=> start!77676 e!507239))

(declare-fun array_inv!20052 (array!53334) Bool)

(assert (=> start!77676 (and (array_inv!20052 _values!1152) e!507244)))

(assert (=> start!77676 tp!56961))

(assert (=> start!77676 true))

(assert (=> start!77676 tp_is_empty!18651))

(declare-fun array_inv!20053 (array!53332) Bool)

(assert (=> start!77676 (array_inv!20053 _keys!1386)))

(declare-fun mapIsEmpty!29689 () Bool)

(assert (=> mapIsEmpty!29689 mapRes!29689))

(declare-fun b!905142 () Bool)

(declare-fun res!610895 () Bool)

(declare-fun e!507238 () Bool)

(assert (=> b!905142 (=> res!610895 e!507238)))

(declare-datatypes ((tuple2!12212 0))(
  ( (tuple2!12213 (_1!6116 (_ BitVec 64)) (_2!6116 V!29833)) )
))
(declare-datatypes ((List!18081 0))(
  ( (Nil!18078) (Cons!18077 (h!19223 tuple2!12212) (t!25494 List!18081)) )
))
(declare-datatypes ((ListLongMap!10923 0))(
  ( (ListLongMap!10924 (toList!5477 List!18081)) )
))
(declare-fun lt!408444 () ListLongMap!10923)

(declare-fun lt!408442 () V!29833)

(declare-fun apply!454 (ListLongMap!10923 (_ BitVec 64)) V!29833)

(assert (=> b!905142 (= res!610895 (not (= (apply!454 lt!408444 k0!1033) lt!408442)))))

(declare-fun b!905143 () Bool)

(assert (=> b!905143 (= e!507241 tp_is_empty!18651)))

(declare-fun b!905144 () Bool)

(declare-fun e!507240 () Bool)

(assert (=> b!905144 (= e!507240 e!507238)))

(declare-fun res!610896 () Bool)

(assert (=> b!905144 (=> res!610896 e!507238)))

(declare-fun contains!4490 (ListLongMap!10923 (_ BitVec 64)) Bool)

(assert (=> b!905144 (= res!610896 (not (contains!4490 lt!408444 k0!1033)))))

(declare-fun zeroValue!1094 () V!29833)

(declare-fun minValue!1094 () V!29833)

(declare-fun defaultEntry!1160 () Int)

(declare-fun getCurrentListMap!2714 (array!53332 array!53334 (_ BitVec 32) (_ BitVec 32) V!29833 V!29833 (_ BitVec 32) Int) ListLongMap!10923)

(assert (=> b!905144 (= lt!408444 (getCurrentListMap!2714 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905145 () Bool)

(assert (=> b!905145 (= e!507243 (not e!507240))))

(declare-fun res!610898 () Bool)

(assert (=> b!905145 (=> res!610898 e!507240)))

(assert (=> b!905145 (= res!610898 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26081 _keys!1386))))))

(declare-fun get!13475 (ValueCell!8844 V!29833) V!29833)

(declare-fun dynLambda!1331 (Int (_ BitVec 64)) V!29833)

(assert (=> b!905145 (= lt!408442 (get!13475 (select (arr!25622 _values!1152) i!717) (dynLambda!1331 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905145 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30683 0))(
  ( (Unit!30684) )
))
(declare-fun lt!408446 () Unit!30683)

(declare-fun lemmaKeyInListMapIsInArray!204 (array!53332 array!53334 (_ BitVec 32) (_ BitVec 32) V!29833 V!29833 (_ BitVec 64) Int) Unit!30683)

(assert (=> b!905145 (= lt!408446 (lemmaKeyInListMapIsInArray!204 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905146 () Bool)

(declare-fun res!610902 () Bool)

(assert (=> b!905146 (=> (not res!610902) (not e!507239))))

(declare-datatypes ((List!18082 0))(
  ( (Nil!18079) (Cons!18078 (h!19224 (_ BitVec 64)) (t!25495 List!18082)) )
))
(declare-fun arrayNoDuplicates!0 (array!53332 (_ BitVec 32) List!18082) Bool)

(assert (=> b!905146 (= res!610902 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18079))))

(declare-fun mapNonEmpty!29689 () Bool)

(declare-fun tp!56962 () Bool)

(assert (=> mapNonEmpty!29689 (= mapRes!29689 (and tp!56962 e!507242))))

(declare-fun mapValue!29689 () ValueCell!8844)

(declare-fun mapRest!29689 () (Array (_ BitVec 32) ValueCell!8844))

(declare-fun mapKey!29689 () (_ BitVec 32))

(assert (=> mapNonEmpty!29689 (= (arr!25622 _values!1152) (store mapRest!29689 mapKey!29689 mapValue!29689))))

(declare-fun b!905147 () Bool)

(assert (=> b!905147 (= e!507239 e!507243)))

(declare-fun res!610893 () Bool)

(assert (=> b!905147 (=> (not res!610893) (not e!507243))))

(declare-fun lt!408445 () ListLongMap!10923)

(assert (=> b!905147 (= res!610893 (contains!4490 lt!408445 k0!1033))))

(assert (=> b!905147 (= lt!408445 (getCurrentListMap!2714 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905148 () Bool)

(declare-fun res!610901 () Bool)

(assert (=> b!905148 (=> (not res!610901) (not e!507243))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905148 (= res!610901 (inRange!0 i!717 mask!1756))))

(declare-fun b!905149 () Bool)

(assert (=> b!905149 (= e!507238 true)))

(assert (=> b!905149 (= (apply!454 lt!408445 k0!1033) lt!408442)))

(declare-fun lt!408443 () Unit!30683)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!8 (array!53332 array!53334 (_ BitVec 32) (_ BitVec 32) V!29833 V!29833 (_ BitVec 64) V!29833 (_ BitVec 32) Int) Unit!30683)

(assert (=> b!905149 (= lt!408443 (lemmaListMapApplyFromThenApplyFromZero!8 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408442 i!717 defaultEntry!1160))))

(assert (= (and start!77676 res!610900) b!905141))

(assert (= (and b!905141 res!610894) b!905137))

(assert (= (and b!905137 res!610897) b!905146))

(assert (= (and b!905146 res!610902) b!905147))

(assert (= (and b!905147 res!610893) b!905148))

(assert (= (and b!905148 res!610901) b!905139))

(assert (= (and b!905139 res!610899) b!905145))

(assert (= (and b!905145 (not res!610898)) b!905144))

(assert (= (and b!905144 (not res!610896)) b!905142))

(assert (= (and b!905142 (not res!610895)) b!905149))

(assert (= (and b!905140 condMapEmpty!29689) mapIsEmpty!29689))

(assert (= (and b!905140 (not condMapEmpty!29689)) mapNonEmpty!29689))

(get-info :version)

(assert (= (and mapNonEmpty!29689 ((_ is ValueCellFull!8844) mapValue!29689)) b!905138))

(assert (= (and b!905140 ((_ is ValueCellFull!8844) mapDefault!29689)) b!905143))

(assert (= start!77676 b!905140))

(declare-fun b_lambda!13137 () Bool)

(assert (=> (not b_lambda!13137) (not b!905145)))

(declare-fun t!25493 () Bool)

(declare-fun tb!5263 () Bool)

(assert (=> (and start!77676 (= defaultEntry!1160 defaultEntry!1160) t!25493) tb!5263))

(declare-fun result!10313 () Bool)

(assert (=> tb!5263 (= result!10313 tp_is_empty!18651)))

(assert (=> b!905145 t!25493))

(declare-fun b_and!26639 () Bool)

(assert (= b_and!26637 (and (=> t!25493 result!10313) b_and!26639)))

(declare-fun m!840651 () Bool)

(assert (=> b!905139 m!840651))

(declare-fun m!840653 () Bool)

(assert (=> mapNonEmpty!29689 m!840653))

(declare-fun m!840655 () Bool)

(assert (=> b!905144 m!840655))

(declare-fun m!840657 () Bool)

(assert (=> b!905144 m!840657))

(declare-fun m!840659 () Bool)

(assert (=> b!905145 m!840659))

(declare-fun m!840661 () Bool)

(assert (=> b!905145 m!840661))

(declare-fun m!840663 () Bool)

(assert (=> b!905145 m!840663))

(declare-fun m!840665 () Bool)

(assert (=> b!905145 m!840665))

(assert (=> b!905145 m!840659))

(assert (=> b!905145 m!840663))

(declare-fun m!840667 () Bool)

(assert (=> b!905145 m!840667))

(declare-fun m!840669 () Bool)

(assert (=> b!905142 m!840669))

(declare-fun m!840671 () Bool)

(assert (=> b!905147 m!840671))

(declare-fun m!840673 () Bool)

(assert (=> b!905147 m!840673))

(declare-fun m!840675 () Bool)

(assert (=> b!905148 m!840675))

(declare-fun m!840677 () Bool)

(assert (=> b!905146 m!840677))

(declare-fun m!840679 () Bool)

(assert (=> b!905149 m!840679))

(declare-fun m!840681 () Bool)

(assert (=> b!905149 m!840681))

(declare-fun m!840683 () Bool)

(assert (=> b!905137 m!840683))

(declare-fun m!840685 () Bool)

(assert (=> start!77676 m!840685))

(declare-fun m!840687 () Bool)

(assert (=> start!77676 m!840687))

(declare-fun m!840689 () Bool)

(assert (=> start!77676 m!840689))

(check-sat (not b_lambda!13137) (not b!905142) (not start!77676) (not b!905145) (not b!905137) (not b!905149) (not mapNonEmpty!29689) (not b!905144) (not b_next!16233) (not b!905146) b_and!26639 (not b!905148) (not b!905147) tp_is_empty!18651)
(check-sat b_and!26639 (not b_next!16233))
