; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37938 () Bool)

(assert start!37938)

(declare-fun b_free!8943 () Bool)

(declare-fun b_next!8943 () Bool)

(assert (=> start!37938 (= b_free!8943 (not b_next!8943))))

(declare-fun tp!31592 () Bool)

(declare-fun b_and!16251 () Bool)

(assert (=> start!37938 (= tp!31592 b_and!16251)))

(declare-fun b!389832 () Bool)

(declare-fun e!236177 () Bool)

(declare-fun tp_is_empty!9615 () Bool)

(assert (=> b!389832 (= e!236177 tp_is_empty!9615)))

(declare-fun b!389833 () Bool)

(declare-fun res!223095 () Bool)

(declare-fun e!236178 () Bool)

(assert (=> b!389833 (=> (not res!223095) (not e!236178))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13925 0))(
  ( (V!13926 (val!4852 Int)) )
))
(declare-datatypes ((ValueCell!4464 0))(
  ( (ValueCellFull!4464 (v!7061 V!13925)) (EmptyCell!4464) )
))
(declare-datatypes ((array!23105 0))(
  ( (array!23106 (arr!11014 (Array (_ BitVec 32) ValueCell!4464)) (size!11366 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23105)

(declare-datatypes ((array!23107 0))(
  ( (array!23108 (arr!11015 (Array (_ BitVec 32) (_ BitVec 64))) (size!11367 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23107)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389833 (= res!223095 (and (= (size!11366 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11367 _keys!658) (size!11366 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389835 () Bool)

(declare-fun res!223098 () Bool)

(assert (=> b!389835 (=> (not res!223098) (not e!236178))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389835 (= res!223098 (validKeyInArray!0 k0!778))))

(declare-fun b!389836 () Bool)

(declare-fun e!236172 () Bool)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389836 (= e!236172 (bvslt i!548 (size!11366 _values!506)))))

(declare-datatypes ((tuple2!6472 0))(
  ( (tuple2!6473 (_1!3246 (_ BitVec 64)) (_2!3246 V!13925)) )
))
(declare-datatypes ((List!6354 0))(
  ( (Nil!6351) (Cons!6350 (h!7206 tuple2!6472) (t!11520 List!6354)) )
))
(declare-datatypes ((ListLongMap!5399 0))(
  ( (ListLongMap!5400 (toList!2715 List!6354)) )
))
(declare-fun lt!183624 () ListLongMap!5399)

(declare-fun lt!183626 () tuple2!6472)

(declare-fun lt!183625 () tuple2!6472)

(declare-fun lt!183620 () ListLongMap!5399)

(declare-fun +!1013 (ListLongMap!5399 tuple2!6472) ListLongMap!5399)

(assert (=> b!389836 (= (+!1013 lt!183620 lt!183626) (+!1013 lt!183624 lt!183625))))

(declare-fun v!373 () V!13925)

(declare-fun lt!183618 () ListLongMap!5399)

(declare-datatypes ((Unit!11915 0))(
  ( (Unit!11916) )
))
(declare-fun lt!183615 () Unit!11915)

(declare-fun minValue!472 () V!13925)

(declare-fun addCommutativeForDiffKeys!330 (ListLongMap!5399 (_ BitVec 64) V!13925 (_ BitVec 64) V!13925) Unit!11915)

(assert (=> b!389836 (= lt!183615 (addCommutativeForDiffKeys!330 lt!183618 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!389837 () Bool)

(declare-fun e!236173 () Bool)

(assert (=> b!389837 (= e!236173 e!236172)))

(declare-fun res!223099 () Bool)

(assert (=> b!389837 (=> res!223099 e!236172)))

(assert (=> b!389837 (= res!223099 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!183616 () ListLongMap!5399)

(assert (=> b!389837 (= lt!183616 lt!183620)))

(assert (=> b!389837 (= lt!183620 (+!1013 lt!183618 lt!183625))))

(declare-fun lt!183622 () Unit!11915)

(declare-fun lt!183623 () ListLongMap!5399)

(declare-fun zeroValue!472 () V!13925)

(assert (=> b!389837 (= lt!183622 (addCommutativeForDiffKeys!330 lt!183623 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183617 () ListLongMap!5399)

(assert (=> b!389837 (= lt!183617 (+!1013 lt!183616 lt!183626))))

(declare-fun lt!183630 () ListLongMap!5399)

(declare-fun lt!183627 () tuple2!6472)

(assert (=> b!389837 (= lt!183616 (+!1013 lt!183630 lt!183627))))

(declare-fun lt!183619 () ListLongMap!5399)

(assert (=> b!389837 (= lt!183619 lt!183624)))

(assert (=> b!389837 (= lt!183624 (+!1013 lt!183618 lt!183626))))

(assert (=> b!389837 (= lt!183618 (+!1013 lt!183623 lt!183627))))

(declare-fun lt!183628 () ListLongMap!5399)

(assert (=> b!389837 (= lt!183617 (+!1013 (+!1013 lt!183628 lt!183627) lt!183626))))

(assert (=> b!389837 (= lt!183626 (tuple2!6473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389837 (= lt!183627 (tuple2!6473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15999 () Bool)

(declare-fun mapRes!15999 () Bool)

(declare-fun tp!31593 () Bool)

(assert (=> mapNonEmpty!15999 (= mapRes!15999 (and tp!31593 e!236177))))

(declare-fun mapValue!15999 () ValueCell!4464)

(declare-fun mapKey!15999 () (_ BitVec 32))

(declare-fun mapRest!15999 () (Array (_ BitVec 32) ValueCell!4464))

(assert (=> mapNonEmpty!15999 (= (arr!11014 _values!506) (store mapRest!15999 mapKey!15999 mapValue!15999))))

(declare-fun b!389838 () Bool)

(declare-fun e!236176 () Bool)

(declare-fun e!236175 () Bool)

(assert (=> b!389838 (= e!236176 (and e!236175 mapRes!15999))))

(declare-fun condMapEmpty!15999 () Bool)

(declare-fun mapDefault!15999 () ValueCell!4464)

(assert (=> b!389838 (= condMapEmpty!15999 (= (arr!11014 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4464)) mapDefault!15999)))))

(declare-fun b!389839 () Bool)

(declare-fun res!223091 () Bool)

(assert (=> b!389839 (=> (not res!223091) (not e!236178))))

(assert (=> b!389839 (= res!223091 (or (= (select (arr!11015 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11015 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389840 () Bool)

(declare-fun res!223088 () Bool)

(assert (=> b!389840 (=> (not res!223088) (not e!236178))))

(declare-datatypes ((List!6355 0))(
  ( (Nil!6352) (Cons!6351 (h!7207 (_ BitVec 64)) (t!11521 List!6355)) )
))
(declare-fun arrayNoDuplicates!0 (array!23107 (_ BitVec 32) List!6355) Bool)

(assert (=> b!389840 (= res!223088 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6352))))

(declare-fun b!389841 () Bool)

(declare-fun e!236179 () Bool)

(assert (=> b!389841 (= e!236179 (not e!236173))))

(declare-fun res!223093 () Bool)

(assert (=> b!389841 (=> res!223093 e!236173)))

(assert (=> b!389841 (= res!223093 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2082 (array!23107 array!23105 (_ BitVec 32) (_ BitVec 32) V!13925 V!13925 (_ BitVec 32) Int) ListLongMap!5399)

(assert (=> b!389841 (= lt!183619 (getCurrentListMap!2082 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183631 () array!23107)

(declare-fun lt!183629 () array!23105)

(assert (=> b!389841 (= lt!183617 (getCurrentListMap!2082 lt!183631 lt!183629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389841 (and (= lt!183628 lt!183630) (= lt!183630 lt!183628))))

(assert (=> b!389841 (= lt!183630 (+!1013 lt!183623 lt!183625))))

(assert (=> b!389841 (= lt!183625 (tuple2!6473 k0!778 v!373))))

(declare-fun lt!183621 () Unit!11915)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!239 (array!23107 array!23105 (_ BitVec 32) (_ BitVec 32) V!13925 V!13925 (_ BitVec 32) (_ BitVec 64) V!13925 (_ BitVec 32) Int) Unit!11915)

(assert (=> b!389841 (= lt!183621 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!239 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!944 (array!23107 array!23105 (_ BitVec 32) (_ BitVec 32) V!13925 V!13925 (_ BitVec 32) Int) ListLongMap!5399)

(assert (=> b!389841 (= lt!183628 (getCurrentListMapNoExtraKeys!944 lt!183631 lt!183629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389841 (= lt!183629 (array!23106 (store (arr!11014 _values!506) i!548 (ValueCellFull!4464 v!373)) (size!11366 _values!506)))))

(assert (=> b!389841 (= lt!183623 (getCurrentListMapNoExtraKeys!944 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15999 () Bool)

(assert (=> mapIsEmpty!15999 mapRes!15999))

(declare-fun b!389842 () Bool)

(declare-fun res!223097 () Bool)

(assert (=> b!389842 (=> (not res!223097) (not e!236178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23107 (_ BitVec 32)) Bool)

(assert (=> b!389842 (= res!223097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389834 () Bool)

(assert (=> b!389834 (= e!236178 e!236179)))

(declare-fun res!223090 () Bool)

(assert (=> b!389834 (=> (not res!223090) (not e!236179))))

(assert (=> b!389834 (= res!223090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183631 mask!970))))

(assert (=> b!389834 (= lt!183631 (array!23108 (store (arr!11015 _keys!658) i!548 k0!778) (size!11367 _keys!658)))))

(declare-fun res!223089 () Bool)

(assert (=> start!37938 (=> (not res!223089) (not e!236178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37938 (= res!223089 (validMask!0 mask!970))))

(assert (=> start!37938 e!236178))

(declare-fun array_inv!8074 (array!23105) Bool)

(assert (=> start!37938 (and (array_inv!8074 _values!506) e!236176)))

(assert (=> start!37938 tp!31592))

(assert (=> start!37938 true))

(assert (=> start!37938 tp_is_empty!9615))

(declare-fun array_inv!8075 (array!23107) Bool)

(assert (=> start!37938 (array_inv!8075 _keys!658)))

(declare-fun b!389843 () Bool)

(declare-fun res!223092 () Bool)

(assert (=> b!389843 (=> (not res!223092) (not e!236178))))

(assert (=> b!389843 (= res!223092 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11367 _keys!658))))))

(declare-fun b!389844 () Bool)

(assert (=> b!389844 (= e!236175 tp_is_empty!9615)))

(declare-fun b!389845 () Bool)

(declare-fun res!223094 () Bool)

(assert (=> b!389845 (=> (not res!223094) (not e!236179))))

(assert (=> b!389845 (= res!223094 (arrayNoDuplicates!0 lt!183631 #b00000000000000000000000000000000 Nil!6352))))

(declare-fun b!389846 () Bool)

(declare-fun res!223096 () Bool)

(assert (=> b!389846 (=> (not res!223096) (not e!236178))))

(declare-fun arrayContainsKey!0 (array!23107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389846 (= res!223096 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37938 res!223089) b!389833))

(assert (= (and b!389833 res!223095) b!389842))

(assert (= (and b!389842 res!223097) b!389840))

(assert (= (and b!389840 res!223088) b!389843))

(assert (= (and b!389843 res!223092) b!389835))

(assert (= (and b!389835 res!223098) b!389839))

(assert (= (and b!389839 res!223091) b!389846))

(assert (= (and b!389846 res!223096) b!389834))

(assert (= (and b!389834 res!223090) b!389845))

(assert (= (and b!389845 res!223094) b!389841))

(assert (= (and b!389841 (not res!223093)) b!389837))

(assert (= (and b!389837 (not res!223099)) b!389836))

(assert (= (and b!389838 condMapEmpty!15999) mapIsEmpty!15999))

(assert (= (and b!389838 (not condMapEmpty!15999)) mapNonEmpty!15999))

(get-info :version)

(assert (= (and mapNonEmpty!15999 ((_ is ValueCellFull!4464) mapValue!15999)) b!389832))

(assert (= (and b!389838 ((_ is ValueCellFull!4464) mapDefault!15999)) b!389844))

(assert (= start!37938 b!389838))

(declare-fun m!386125 () Bool)

(assert (=> b!389841 m!386125))

(declare-fun m!386127 () Bool)

(assert (=> b!389841 m!386127))

(declare-fun m!386129 () Bool)

(assert (=> b!389841 m!386129))

(declare-fun m!386131 () Bool)

(assert (=> b!389841 m!386131))

(declare-fun m!386133 () Bool)

(assert (=> b!389841 m!386133))

(declare-fun m!386135 () Bool)

(assert (=> b!389841 m!386135))

(declare-fun m!386137 () Bool)

(assert (=> b!389841 m!386137))

(declare-fun m!386139 () Bool)

(assert (=> b!389834 m!386139))

(declare-fun m!386141 () Bool)

(assert (=> b!389834 m!386141))

(declare-fun m!386143 () Bool)

(assert (=> b!389846 m!386143))

(declare-fun m!386145 () Bool)

(assert (=> b!389845 m!386145))

(declare-fun m!386147 () Bool)

(assert (=> b!389840 m!386147))

(declare-fun m!386149 () Bool)

(assert (=> b!389836 m!386149))

(declare-fun m!386151 () Bool)

(assert (=> b!389836 m!386151))

(declare-fun m!386153 () Bool)

(assert (=> b!389836 m!386153))

(declare-fun m!386155 () Bool)

(assert (=> b!389837 m!386155))

(declare-fun m!386157 () Bool)

(assert (=> b!389837 m!386157))

(declare-fun m!386159 () Bool)

(assert (=> b!389837 m!386159))

(declare-fun m!386161 () Bool)

(assert (=> b!389837 m!386161))

(declare-fun m!386163 () Bool)

(assert (=> b!389837 m!386163))

(declare-fun m!386165 () Bool)

(assert (=> b!389837 m!386165))

(assert (=> b!389837 m!386165))

(declare-fun m!386167 () Bool)

(assert (=> b!389837 m!386167))

(declare-fun m!386169 () Bool)

(assert (=> b!389837 m!386169))

(declare-fun m!386171 () Bool)

(assert (=> b!389842 m!386171))

(declare-fun m!386173 () Bool)

(assert (=> b!389839 m!386173))

(declare-fun m!386175 () Bool)

(assert (=> start!37938 m!386175))

(declare-fun m!386177 () Bool)

(assert (=> start!37938 m!386177))

(declare-fun m!386179 () Bool)

(assert (=> start!37938 m!386179))

(declare-fun m!386181 () Bool)

(assert (=> b!389835 m!386181))

(declare-fun m!386183 () Bool)

(assert (=> mapNonEmpty!15999 m!386183))

(check-sat (not start!37938) (not b!389835) tp_is_empty!9615 (not b!389840) (not b!389846) b_and!16251 (not b!389834) (not b!389841) (not b!389842) (not b_next!8943) (not b!389836) (not b!389845) (not mapNonEmpty!15999) (not b!389837))
(check-sat b_and!16251 (not b_next!8943))
