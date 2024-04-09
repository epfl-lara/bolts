; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40894 () Bool)

(assert start!40894)

(declare-fun b_free!10821 () Bool)

(declare-fun b_next!10821 () Bool)

(assert (=> start!40894 (= b_free!10821 (not b_next!10821))))

(declare-fun tp!38290 () Bool)

(declare-fun b_and!18981 () Bool)

(assert (=> start!40894 (= tp!38290 b_and!18981)))

(declare-fun b!453902 () Bool)

(declare-fun res!270448 () Bool)

(declare-fun e!265639 () Bool)

(assert (=> b!453902 (=> (not res!270448) (not e!265639))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28087 0))(
  ( (array!28088 (arr!13484 (Array (_ BitVec 32) (_ BitVec 64))) (size!13836 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28087)

(assert (=> b!453902 (= res!270448 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13836 _keys!709))))))

(declare-fun b!453903 () Bool)

(declare-fun e!265636 () Bool)

(declare-fun tp_is_empty!12159 () Bool)

(assert (=> b!453903 (= e!265636 tp_is_empty!12159)))

(declare-fun b!453904 () Bool)

(declare-fun res!270453 () Bool)

(assert (=> b!453904 (=> (not res!270453) (not e!265639))))

(declare-datatypes ((List!8116 0))(
  ( (Nil!8113) (Cons!8112 (h!8968 (_ BitVec 64)) (t!13952 List!8116)) )
))
(declare-fun arrayNoDuplicates!0 (array!28087 (_ BitVec 32) List!8116) Bool)

(assert (=> b!453904 (= res!270453 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8113))))

(declare-fun b!453905 () Bool)

(declare-fun res!270449 () Bool)

(assert (=> b!453905 (=> (not res!270449) (not e!265639))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28087 (_ BitVec 32)) Bool)

(assert (=> b!453905 (= res!270449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19879 () Bool)

(declare-fun mapRes!19879 () Bool)

(assert (=> mapIsEmpty!19879 mapRes!19879))

(declare-fun b!453906 () Bool)

(declare-fun res!270452 () Bool)

(assert (=> b!453906 (=> (not res!270452) (not e!265639))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453906 (= res!270452 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19879 () Bool)

(declare-fun tp!38289 () Bool)

(declare-fun e!265635 () Bool)

(assert (=> mapNonEmpty!19879 (= mapRes!19879 (and tp!38289 e!265635))))

(declare-datatypes ((V!17317 0))(
  ( (V!17318 (val!6124 Int)) )
))
(declare-datatypes ((ValueCell!5736 0))(
  ( (ValueCellFull!5736 (v!8386 V!17317)) (EmptyCell!5736) )
))
(declare-fun mapRest!19879 () (Array (_ BitVec 32) ValueCell!5736))

(declare-fun mapKey!19879 () (_ BitVec 32))

(declare-datatypes ((array!28089 0))(
  ( (array!28090 (arr!13485 (Array (_ BitVec 32) ValueCell!5736)) (size!13837 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28089)

(declare-fun mapValue!19879 () ValueCell!5736)

(assert (=> mapNonEmpty!19879 (= (arr!13485 _values!549) (store mapRest!19879 mapKey!19879 mapValue!19879))))

(declare-fun b!453908 () Bool)

(declare-fun res!270457 () Bool)

(assert (=> b!453908 (=> (not res!270457) (not e!265639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453908 (= res!270457 (validMask!0 mask!1025))))

(declare-fun b!453909 () Bool)

(declare-fun res!270456 () Bool)

(assert (=> b!453909 (=> (not res!270456) (not e!265639))))

(assert (=> b!453909 (= res!270456 (or (= (select (arr!13484 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13484 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453910 () Bool)

(declare-fun res!270454 () Bool)

(assert (=> b!453910 (=> (not res!270454) (not e!265639))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!453910 (= res!270454 (and (= (size!13837 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13836 _keys!709) (size!13837 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453911 () Bool)

(declare-fun e!265640 () Bool)

(assert (=> b!453911 (= e!265640 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17317)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!206031 () array!28087)

(declare-fun zeroValue!515 () V!17317)

(declare-fun v!412 () V!17317)

(declare-datatypes ((tuple2!8014 0))(
  ( (tuple2!8015 (_1!4017 (_ BitVec 64)) (_2!4017 V!17317)) )
))
(declare-datatypes ((List!8117 0))(
  ( (Nil!8114) (Cons!8113 (h!8969 tuple2!8014) (t!13953 List!8117)) )
))
(declare-datatypes ((ListLongMap!6941 0))(
  ( (ListLongMap!6942 (toList!3486 List!8117)) )
))
(declare-fun lt!206030 () ListLongMap!6941)

(declare-fun getCurrentListMapNoExtraKeys!1662 (array!28087 array!28089 (_ BitVec 32) (_ BitVec 32) V!17317 V!17317 (_ BitVec 32) Int) ListLongMap!6941)

(assert (=> b!453911 (= lt!206030 (getCurrentListMapNoExtraKeys!1662 lt!206031 (array!28090 (store (arr!13485 _values!549) i!563 (ValueCellFull!5736 v!412)) (size!13837 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206029 () ListLongMap!6941)

(assert (=> b!453911 (= lt!206029 (getCurrentListMapNoExtraKeys!1662 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!453912 () Bool)

(declare-fun e!265637 () Bool)

(assert (=> b!453912 (= e!265637 (and e!265636 mapRes!19879))))

(declare-fun condMapEmpty!19879 () Bool)

(declare-fun mapDefault!19879 () ValueCell!5736)

(assert (=> b!453912 (= condMapEmpty!19879 (= (arr!13485 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5736)) mapDefault!19879)))))

(declare-fun b!453913 () Bool)

(declare-fun res!270451 () Bool)

(assert (=> b!453913 (=> (not res!270451) (not e!265640))))

(assert (=> b!453913 (= res!270451 (bvsle from!863 i!563))))

(declare-fun b!453914 () Bool)

(declare-fun res!270447 () Bool)

(assert (=> b!453914 (=> (not res!270447) (not e!265640))))

(assert (=> b!453914 (= res!270447 (arrayNoDuplicates!0 lt!206031 #b00000000000000000000000000000000 Nil!8113))))

(declare-fun res!270450 () Bool)

(assert (=> start!40894 (=> (not res!270450) (not e!265639))))

(assert (=> start!40894 (= res!270450 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13836 _keys!709))))))

(assert (=> start!40894 e!265639))

(assert (=> start!40894 tp_is_empty!12159))

(assert (=> start!40894 tp!38290))

(assert (=> start!40894 true))

(declare-fun array_inv!9762 (array!28089) Bool)

(assert (=> start!40894 (and (array_inv!9762 _values!549) e!265637)))

(declare-fun array_inv!9763 (array!28087) Bool)

(assert (=> start!40894 (array_inv!9763 _keys!709)))

(declare-fun b!453907 () Bool)

(declare-fun res!270455 () Bool)

(assert (=> b!453907 (=> (not res!270455) (not e!265639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!453907 (= res!270455 (validKeyInArray!0 k0!794))))

(declare-fun b!453915 () Bool)

(assert (=> b!453915 (= e!265635 tp_is_empty!12159)))

(declare-fun b!453916 () Bool)

(assert (=> b!453916 (= e!265639 e!265640)))

(declare-fun res!270458 () Bool)

(assert (=> b!453916 (=> (not res!270458) (not e!265640))))

(assert (=> b!453916 (= res!270458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206031 mask!1025))))

(assert (=> b!453916 (= lt!206031 (array!28088 (store (arr!13484 _keys!709) i!563 k0!794) (size!13836 _keys!709)))))

(assert (= (and start!40894 res!270450) b!453908))

(assert (= (and b!453908 res!270457) b!453910))

(assert (= (and b!453910 res!270454) b!453905))

(assert (= (and b!453905 res!270449) b!453904))

(assert (= (and b!453904 res!270453) b!453902))

(assert (= (and b!453902 res!270448) b!453907))

(assert (= (and b!453907 res!270455) b!453909))

(assert (= (and b!453909 res!270456) b!453906))

(assert (= (and b!453906 res!270452) b!453916))

(assert (= (and b!453916 res!270458) b!453914))

(assert (= (and b!453914 res!270447) b!453913))

(assert (= (and b!453913 res!270451) b!453911))

(assert (= (and b!453912 condMapEmpty!19879) mapIsEmpty!19879))

(assert (= (and b!453912 (not condMapEmpty!19879)) mapNonEmpty!19879))

(get-info :version)

(assert (= (and mapNonEmpty!19879 ((_ is ValueCellFull!5736) mapValue!19879)) b!453915))

(assert (= (and b!453912 ((_ is ValueCellFull!5736) mapDefault!19879)) b!453903))

(assert (= start!40894 b!453912))

(declare-fun m!438171 () Bool)

(assert (=> start!40894 m!438171))

(declare-fun m!438173 () Bool)

(assert (=> start!40894 m!438173))

(declare-fun m!438175 () Bool)

(assert (=> mapNonEmpty!19879 m!438175))

(declare-fun m!438177 () Bool)

(assert (=> b!453914 m!438177))

(declare-fun m!438179 () Bool)

(assert (=> b!453905 m!438179))

(declare-fun m!438181 () Bool)

(assert (=> b!453909 m!438181))

(declare-fun m!438183 () Bool)

(assert (=> b!453904 m!438183))

(declare-fun m!438185 () Bool)

(assert (=> b!453908 m!438185))

(declare-fun m!438187 () Bool)

(assert (=> b!453906 m!438187))

(declare-fun m!438189 () Bool)

(assert (=> b!453907 m!438189))

(declare-fun m!438191 () Bool)

(assert (=> b!453916 m!438191))

(declare-fun m!438193 () Bool)

(assert (=> b!453916 m!438193))

(declare-fun m!438195 () Bool)

(assert (=> b!453911 m!438195))

(declare-fun m!438197 () Bool)

(assert (=> b!453911 m!438197))

(declare-fun m!438199 () Bool)

(assert (=> b!453911 m!438199))

(check-sat (not b!453906) (not b!453911) (not b_next!10821) (not start!40894) (not b!453905) (not b!453907) (not mapNonEmpty!19879) (not b!453914) (not b!453908) (not b!453916) (not b!453904) tp_is_empty!12159 b_and!18981)
(check-sat b_and!18981 (not b_next!10821))
