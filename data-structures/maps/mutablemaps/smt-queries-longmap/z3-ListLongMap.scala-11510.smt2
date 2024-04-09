; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133978 () Bool)

(assert start!133978)

(declare-fun b_free!32169 () Bool)

(declare-fun b_next!32169 () Bool)

(assert (=> start!133978 (= b_free!32169 (not b_next!32169))))

(declare-fun tp!113810 () Bool)

(declare-fun b_and!51789 () Bool)

(assert (=> start!133978 (= tp!113810 b_and!51789)))

(declare-fun b!1565689 () Bool)

(declare-fun res!1070350 () Bool)

(declare-fun e!872716 () Bool)

(assert (=> b!1565689 (=> (not res!1070350) (not e!872716))))

(declare-datatypes ((array!104547 0))(
  ( (array!104548 (arr!50456 (Array (_ BitVec 32) (_ BitVec 64))) (size!51007 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104547)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104547 (_ BitVec 32)) Bool)

(assert (=> b!1565689 (= res!1070350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565690 () Bool)

(declare-fun e!872715 () Bool)

(declare-fun tp_is_empty!38943 () Bool)

(assert (=> b!1565690 (= e!872715 tp_is_empty!38943)))

(declare-fun b!1565691 () Bool)

(declare-fun e!872717 () Bool)

(assert (=> b!1565691 (= e!872717 tp_is_empty!38943)))

(declare-fun b!1565692 () Bool)

(declare-fun res!1070349 () Bool)

(assert (=> b!1565692 (=> (not res!1070349) (not e!872716))))

(declare-datatypes ((List!36779 0))(
  ( (Nil!36776) (Cons!36775 (h!38222 (_ BitVec 64)) (t!51669 List!36779)) )
))
(declare-fun arrayNoDuplicates!0 (array!104547 (_ BitVec 32) List!36779) Bool)

(assert (=> b!1565692 (= res!1070349 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36776))))

(declare-fun b!1565693 () Bool)

(declare-fun e!872718 () Bool)

(assert (=> b!1565693 (= e!872718 true)))

(declare-datatypes ((V!60131 0))(
  ( (V!60132 (val!19555 Int)) )
))
(declare-datatypes ((tuple2!25392 0))(
  ( (tuple2!25393 (_1!12706 (_ BitVec 64)) (_2!12706 V!60131)) )
))
(declare-datatypes ((List!36780 0))(
  ( (Nil!36777) (Cons!36776 (h!38223 tuple2!25392) (t!51670 List!36780)) )
))
(declare-datatypes ((ListLongMap!22839 0))(
  ( (ListLongMap!22840 (toList!11435 List!36780)) )
))
(declare-fun lt!672354 () ListLongMap!22839)

(declare-fun lt!672352 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10356 (ListLongMap!22839 (_ BitVec 64)) Bool)

(assert (=> b!1565693 (= lt!672352 (contains!10356 lt!672354 (select (arr!50456 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59806 () Bool)

(declare-fun mapRes!59806 () Bool)

(declare-fun tp!113809 () Bool)

(assert (=> mapNonEmpty!59806 (= mapRes!59806 (and tp!113809 e!872717))))

(declare-fun mapKey!59806 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18441 0))(
  ( (ValueCellFull!18441 (v!22308 V!60131)) (EmptyCell!18441) )
))
(declare-fun mapRest!59806 () (Array (_ BitVec 32) ValueCell!18441))

(declare-fun mapValue!59806 () ValueCell!18441)

(declare-datatypes ((array!104549 0))(
  ( (array!104550 (arr!50457 (Array (_ BitVec 32) ValueCell!18441)) (size!51008 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104549)

(assert (=> mapNonEmpty!59806 (= (arr!50457 _values!487) (store mapRest!59806 mapKey!59806 mapValue!59806))))

(declare-fun b!1565694 () Bool)

(declare-fun res!1070352 () Bool)

(assert (=> b!1565694 (=> (not res!1070352) (not e!872716))))

(assert (=> b!1565694 (= res!1070352 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51007 _keys!637)) (bvslt from!782 (size!51007 _keys!637))))))

(declare-fun res!1070351 () Bool)

(assert (=> start!133978 (=> (not res!1070351) (not e!872716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133978 (= res!1070351 (validMask!0 mask!947))))

(assert (=> start!133978 e!872716))

(assert (=> start!133978 tp!113810))

(assert (=> start!133978 tp_is_empty!38943))

(assert (=> start!133978 true))

(declare-fun array_inv!39125 (array!104547) Bool)

(assert (=> start!133978 (array_inv!39125 _keys!637)))

(declare-fun e!872720 () Bool)

(declare-fun array_inv!39126 (array!104549) Bool)

(assert (=> start!133978 (and (array_inv!39126 _values!487) e!872720)))

(declare-fun b!1565695 () Bool)

(assert (=> b!1565695 (= e!872716 (not e!872718))))

(declare-fun res!1070346 () Bool)

(assert (=> b!1565695 (=> res!1070346 e!872718)))

(assert (=> b!1565695 (= res!1070346 (contains!10356 lt!672354 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565695 (not (contains!10356 lt!672354 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672356 () V!60131)

(declare-fun lt!672355 () ListLongMap!22839)

(declare-fun +!5042 (ListLongMap!22839 tuple2!25392) ListLongMap!22839)

(assert (=> b!1565695 (= lt!672354 (+!5042 lt!672355 (tuple2!25393 (select (arr!50456 _keys!637) from!782) lt!672356)))))

(declare-datatypes ((Unit!51958 0))(
  ( (Unit!51959) )
))
(declare-fun lt!672353 () Unit!51958)

(declare-fun addStillNotContains!578 (ListLongMap!22839 (_ BitVec 64) V!60131 (_ BitVec 64)) Unit!51958)

(assert (=> b!1565695 (= lt!672353 (addStillNotContains!578 lt!672355 (select (arr!50456 _keys!637) from!782) lt!672356 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26376 (ValueCell!18441 V!60131) V!60131)

(declare-fun dynLambda!3931 (Int (_ BitVec 64)) V!60131)

(assert (=> b!1565695 (= lt!672356 (get!26376 (select (arr!50457 _values!487) from!782) (dynLambda!3931 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60131)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60131)

(declare-fun getCurrentListMapNoExtraKeys!6775 (array!104547 array!104549 (_ BitVec 32) (_ BitVec 32) V!60131 V!60131 (_ BitVec 32) Int) ListLongMap!22839)

(assert (=> b!1565695 (= lt!672355 (getCurrentListMapNoExtraKeys!6775 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565696 () Bool)

(assert (=> b!1565696 (= e!872720 (and e!872715 mapRes!59806))))

(declare-fun condMapEmpty!59806 () Bool)

(declare-fun mapDefault!59806 () ValueCell!18441)

(assert (=> b!1565696 (= condMapEmpty!59806 (= (arr!50457 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18441)) mapDefault!59806)))))

(declare-fun b!1565697 () Bool)

(declare-fun res!1070347 () Bool)

(assert (=> b!1565697 (=> (not res!1070347) (not e!872716))))

(assert (=> b!1565697 (= res!1070347 (and (= (size!51008 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51007 _keys!637) (size!51008 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565698 () Bool)

(declare-fun res!1070348 () Bool)

(assert (=> b!1565698 (=> (not res!1070348) (not e!872716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565698 (= res!1070348 (validKeyInArray!0 (select (arr!50456 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59806 () Bool)

(assert (=> mapIsEmpty!59806 mapRes!59806))

(assert (= (and start!133978 res!1070351) b!1565697))

(assert (= (and b!1565697 res!1070347) b!1565689))

(assert (= (and b!1565689 res!1070350) b!1565692))

(assert (= (and b!1565692 res!1070349) b!1565694))

(assert (= (and b!1565694 res!1070352) b!1565698))

(assert (= (and b!1565698 res!1070348) b!1565695))

(assert (= (and b!1565695 (not res!1070346)) b!1565693))

(assert (= (and b!1565696 condMapEmpty!59806) mapIsEmpty!59806))

(assert (= (and b!1565696 (not condMapEmpty!59806)) mapNonEmpty!59806))

(get-info :version)

(assert (= (and mapNonEmpty!59806 ((_ is ValueCellFull!18441) mapValue!59806)) b!1565691))

(assert (= (and b!1565696 ((_ is ValueCellFull!18441) mapDefault!59806)) b!1565690))

(assert (= start!133978 b!1565696))

(declare-fun b_lambda!24993 () Bool)

(assert (=> (not b_lambda!24993) (not b!1565695)))

(declare-fun t!51668 () Bool)

(declare-fun tb!12645 () Bool)

(assert (=> (and start!133978 (= defaultEntry!495 defaultEntry!495) t!51668) tb!12645))

(declare-fun result!26573 () Bool)

(assert (=> tb!12645 (= result!26573 tp_is_empty!38943)))

(assert (=> b!1565695 t!51668))

(declare-fun b_and!51791 () Bool)

(assert (= b_and!51789 (and (=> t!51668 result!26573) b_and!51791)))

(declare-fun m!1440663 () Bool)

(assert (=> start!133978 m!1440663))

(declare-fun m!1440665 () Bool)

(assert (=> start!133978 m!1440665))

(declare-fun m!1440667 () Bool)

(assert (=> start!133978 m!1440667))

(declare-fun m!1440669 () Bool)

(assert (=> b!1565693 m!1440669))

(assert (=> b!1565693 m!1440669))

(declare-fun m!1440671 () Bool)

(assert (=> b!1565693 m!1440671))

(declare-fun m!1440673 () Bool)

(assert (=> b!1565695 m!1440673))

(declare-fun m!1440675 () Bool)

(assert (=> b!1565695 m!1440675))

(declare-fun m!1440677 () Bool)

(assert (=> b!1565695 m!1440677))

(assert (=> b!1565695 m!1440673))

(declare-fun m!1440679 () Bool)

(assert (=> b!1565695 m!1440679))

(assert (=> b!1565695 m!1440669))

(declare-fun m!1440681 () Bool)

(assert (=> b!1565695 m!1440681))

(assert (=> b!1565695 m!1440675))

(declare-fun m!1440683 () Bool)

(assert (=> b!1565695 m!1440683))

(declare-fun m!1440685 () Bool)

(assert (=> b!1565695 m!1440685))

(declare-fun m!1440687 () Bool)

(assert (=> b!1565695 m!1440687))

(assert (=> b!1565695 m!1440669))

(declare-fun m!1440689 () Bool)

(assert (=> b!1565692 m!1440689))

(declare-fun m!1440691 () Bool)

(assert (=> b!1565689 m!1440691))

(declare-fun m!1440693 () Bool)

(assert (=> mapNonEmpty!59806 m!1440693))

(assert (=> b!1565698 m!1440669))

(assert (=> b!1565698 m!1440669))

(declare-fun m!1440695 () Bool)

(assert (=> b!1565698 m!1440695))

(check-sat tp_is_empty!38943 b_and!51791 (not b!1565698) (not b_next!32169) (not b!1565692) (not b!1565695) (not start!133978) (not b_lambda!24993) (not mapNonEmpty!59806) (not b!1565693) (not b!1565689))
(check-sat b_and!51791 (not b_next!32169))
