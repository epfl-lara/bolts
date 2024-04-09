; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77640 () Bool)

(assert start!77640)

(declare-fun b_free!16197 () Bool)

(declare-fun b_next!16197 () Bool)

(assert (=> start!77640 (= b_free!16197 (not b_next!16197))))

(declare-fun tp!56854 () Bool)

(declare-fun b_and!26581 () Bool)

(assert (=> start!77640 (= tp!56854 b_and!26581)))

(declare-fun b!904437 () Bool)

(declare-fun res!610382 () Bool)

(declare-fun e!506830 () Bool)

(assert (=> b!904437 (=> (not res!610382) (not e!506830))))

(declare-datatypes ((array!53260 0))(
  ( (array!53261 (arr!25585 (Array (_ BitVec 32) (_ BitVec 64))) (size!26045 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53260)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53260 (_ BitVec 32)) Bool)

(assert (=> b!904437 (= res!610382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904438 () Bool)

(declare-fun e!506832 () Bool)

(assert (=> b!904438 (= e!506832 true)))

(declare-datatypes ((V!29785 0))(
  ( (V!29786 (val!9358 Int)) )
))
(declare-fun lt!408217 () V!29785)

(declare-datatypes ((tuple2!12180 0))(
  ( (tuple2!12181 (_1!6100 (_ BitVec 64)) (_2!6100 V!29785)) )
))
(declare-datatypes ((List!18053 0))(
  ( (Nil!18050) (Cons!18049 (h!19195 tuple2!12180) (t!25444 List!18053)) )
))
(declare-datatypes ((ListLongMap!10891 0))(
  ( (ListLongMap!10892 (toList!5461 List!18053)) )
))
(declare-fun lt!408216 () ListLongMap!10891)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!441 (ListLongMap!10891 (_ BitVec 64)) V!29785)

(assert (=> b!904438 (= lt!408217 (apply!441 lt!408216 k0!1033))))

(declare-fun b!904439 () Bool)

(declare-fun res!610375 () Bool)

(assert (=> b!904439 (=> (not res!610375) (not e!506830))))

(declare-datatypes ((ValueCell!8826 0))(
  ( (ValueCellFull!8826 (v!11863 V!29785)) (EmptyCell!8826) )
))
(declare-datatypes ((array!53262 0))(
  ( (array!53263 (arr!25586 (Array (_ BitVec 32) ValueCell!8826)) (size!26046 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53262)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!904439 (= res!610375 (and (= (size!26046 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26045 _keys!1386) (size!26046 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904440 () Bool)

(declare-fun res!610379 () Bool)

(assert (=> b!904440 (=> (not res!610379) (not e!506830))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!904440 (= res!610379 (and (= (select (arr!25585 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904442 () Bool)

(declare-fun e!506834 () Bool)

(declare-fun tp_is_empty!18615 () Bool)

(assert (=> b!904442 (= e!506834 tp_is_empty!18615)))

(declare-fun b!904443 () Bool)

(declare-fun res!610377 () Bool)

(assert (=> b!904443 (=> (not res!610377) (not e!506830))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29785)

(declare-fun minValue!1094 () V!29785)

(declare-fun contains!4474 (ListLongMap!10891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2698 (array!53260 array!53262 (_ BitVec 32) (_ BitVec 32) V!29785 V!29785 (_ BitVec 32) Int) ListLongMap!10891)

(assert (=> b!904443 (= res!610377 (contains!4474 (getCurrentListMap!2698 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!904444 () Bool)

(declare-fun e!506833 () Bool)

(declare-fun e!506829 () Bool)

(declare-fun mapRes!29635 () Bool)

(assert (=> b!904444 (= e!506833 (and e!506829 mapRes!29635))))

(declare-fun condMapEmpty!29635 () Bool)

(declare-fun mapDefault!29635 () ValueCell!8826)

(assert (=> b!904444 (= condMapEmpty!29635 (= (arr!25586 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8826)) mapDefault!29635)))))

(declare-fun mapNonEmpty!29635 () Bool)

(declare-fun tp!56853 () Bool)

(assert (=> mapNonEmpty!29635 (= mapRes!29635 (and tp!56853 e!506834))))

(declare-fun mapKey!29635 () (_ BitVec 32))

(declare-fun mapValue!29635 () ValueCell!8826)

(declare-fun mapRest!29635 () (Array (_ BitVec 32) ValueCell!8826))

(assert (=> mapNonEmpty!29635 (= (arr!25586 _values!1152) (store mapRest!29635 mapKey!29635 mapValue!29635))))

(declare-fun b!904445 () Bool)

(declare-fun e!506831 () Bool)

(assert (=> b!904445 (= e!506830 (not e!506831))))

(declare-fun res!610381 () Bool)

(assert (=> b!904445 (=> res!610381 e!506831)))

(assert (=> b!904445 (= res!610381 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26045 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904445 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30653 0))(
  ( (Unit!30654) )
))
(declare-fun lt!408218 () Unit!30653)

(declare-fun lemmaKeyInListMapIsInArray!189 (array!53260 array!53262 (_ BitVec 32) (_ BitVec 32) V!29785 V!29785 (_ BitVec 64) Int) Unit!30653)

(assert (=> b!904445 (= lt!408218 (lemmaKeyInListMapIsInArray!189 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904441 () Bool)

(assert (=> b!904441 (= e!506831 e!506832)))

(declare-fun res!610378 () Bool)

(assert (=> b!904441 (=> res!610378 e!506832)))

(assert (=> b!904441 (= res!610378 (not (contains!4474 lt!408216 k0!1033)))))

(assert (=> b!904441 (= lt!408216 (getCurrentListMap!2698 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!610383 () Bool)

(assert (=> start!77640 (=> (not res!610383) (not e!506830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77640 (= res!610383 (validMask!0 mask!1756))))

(assert (=> start!77640 e!506830))

(declare-fun array_inv!20026 (array!53262) Bool)

(assert (=> start!77640 (and (array_inv!20026 _values!1152) e!506833)))

(assert (=> start!77640 tp!56854))

(assert (=> start!77640 true))

(assert (=> start!77640 tp_is_empty!18615))

(declare-fun array_inv!20027 (array!53260) Bool)

(assert (=> start!77640 (array_inv!20027 _keys!1386)))

(declare-fun b!904446 () Bool)

(declare-fun res!610376 () Bool)

(assert (=> b!904446 (=> (not res!610376) (not e!506830))))

(declare-datatypes ((List!18054 0))(
  ( (Nil!18051) (Cons!18050 (h!19196 (_ BitVec 64)) (t!25445 List!18054)) )
))
(declare-fun arrayNoDuplicates!0 (array!53260 (_ BitVec 32) List!18054) Bool)

(assert (=> b!904446 (= res!610376 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18051))))

(declare-fun b!904447 () Bool)

(declare-fun res!610380 () Bool)

(assert (=> b!904447 (=> (not res!610380) (not e!506830))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904447 (= res!610380 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29635 () Bool)

(assert (=> mapIsEmpty!29635 mapRes!29635))

(declare-fun b!904448 () Bool)

(assert (=> b!904448 (= e!506829 tp_is_empty!18615)))

(assert (= (and start!77640 res!610383) b!904439))

(assert (= (and b!904439 res!610375) b!904437))

(assert (= (and b!904437 res!610382) b!904446))

(assert (= (and b!904446 res!610376) b!904443))

(assert (= (and b!904443 res!610377) b!904447))

(assert (= (and b!904447 res!610380) b!904440))

(assert (= (and b!904440 res!610379) b!904445))

(assert (= (and b!904445 (not res!610381)) b!904441))

(assert (= (and b!904441 (not res!610378)) b!904438))

(assert (= (and b!904444 condMapEmpty!29635) mapIsEmpty!29635))

(assert (= (and b!904444 (not condMapEmpty!29635)) mapNonEmpty!29635))

(get-info :version)

(assert (= (and mapNonEmpty!29635 ((_ is ValueCellFull!8826) mapValue!29635)) b!904442))

(assert (= (and b!904444 ((_ is ValueCellFull!8826) mapDefault!29635)) b!904448))

(assert (= start!77640 b!904444))

(declare-fun m!840011 () Bool)

(assert (=> b!904446 m!840011))

(declare-fun m!840013 () Bool)

(assert (=> b!904447 m!840013))

(declare-fun m!840015 () Bool)

(assert (=> b!904441 m!840015))

(declare-fun m!840017 () Bool)

(assert (=> b!904441 m!840017))

(declare-fun m!840019 () Bool)

(assert (=> start!77640 m!840019))

(declare-fun m!840021 () Bool)

(assert (=> start!77640 m!840021))

(declare-fun m!840023 () Bool)

(assert (=> start!77640 m!840023))

(declare-fun m!840025 () Bool)

(assert (=> mapNonEmpty!29635 m!840025))

(declare-fun m!840027 () Bool)

(assert (=> b!904438 m!840027))

(declare-fun m!840029 () Bool)

(assert (=> b!904437 m!840029))

(declare-fun m!840031 () Bool)

(assert (=> b!904445 m!840031))

(declare-fun m!840033 () Bool)

(assert (=> b!904445 m!840033))

(declare-fun m!840035 () Bool)

(assert (=> b!904440 m!840035))

(declare-fun m!840037 () Bool)

(assert (=> b!904443 m!840037))

(assert (=> b!904443 m!840037))

(declare-fun m!840039 () Bool)

(assert (=> b!904443 m!840039))

(check-sat b_and!26581 (not b!904443) (not b!904446) tp_is_empty!18615 (not b!904445) (not start!77640) (not b!904447) (not b!904441) (not b!904438) (not mapNonEmpty!29635) (not b_next!16197) (not b!904437))
(check-sat b_and!26581 (not b_next!16197))
