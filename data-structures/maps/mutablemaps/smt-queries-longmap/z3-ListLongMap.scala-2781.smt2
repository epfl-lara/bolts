; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40584 () Bool)

(assert start!40584)

(declare-fun b_free!10587 () Bool)

(declare-fun b_next!10587 () Bool)

(assert (=> start!40584 (= b_free!10587 (not b_next!10587))))

(declare-fun tp!37580 () Bool)

(declare-fun b_and!18613 () Bool)

(assert (=> start!40584 (= tp!37580 b_and!18613)))

(declare-fun b!447182 () Bool)

(declare-fun res!265648 () Bool)

(declare-fun e!262598 () Bool)

(assert (=> b!447182 (=> (not res!265648) (not e!262598))))

(declare-datatypes ((array!27619 0))(
  ( (array!27620 (arr!13252 (Array (_ BitVec 32) (_ BitVec 64))) (size!13604 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27619)

(declare-datatypes ((List!7914 0))(
  ( (Nil!7911) (Cons!7910 (h!8766 (_ BitVec 64)) (t!13684 List!7914)) )
))
(declare-fun arrayNoDuplicates!0 (array!27619 (_ BitVec 32) List!7914) Bool)

(assert (=> b!447182 (= res!265648 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7911))))

(declare-fun b!447183 () Bool)

(declare-fun res!265647 () Bool)

(assert (=> b!447183 (=> (not res!265647) (not e!262598))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447183 (= res!265647 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!265641 () Bool)

(assert (=> start!40584 (=> (not res!265641) (not e!262598))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40584 (= res!265641 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13604 _keys!709))))))

(assert (=> start!40584 e!262598))

(declare-fun tp_is_empty!11925 () Bool)

(assert (=> start!40584 tp_is_empty!11925))

(assert (=> start!40584 tp!37580))

(assert (=> start!40584 true))

(declare-datatypes ((V!17005 0))(
  ( (V!17006 (val!6007 Int)) )
))
(declare-datatypes ((ValueCell!5619 0))(
  ( (ValueCellFull!5619 (v!8258 V!17005)) (EmptyCell!5619) )
))
(declare-datatypes ((array!27621 0))(
  ( (array!27622 (arr!13253 (Array (_ BitVec 32) ValueCell!5619)) (size!13605 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27621)

(declare-fun e!262595 () Bool)

(declare-fun array_inv!9598 (array!27621) Bool)

(assert (=> start!40584 (and (array_inv!9598 _values!549) e!262595)))

(declare-fun array_inv!9599 (array!27619) Bool)

(assert (=> start!40584 (array_inv!9599 _keys!709)))

(declare-fun mapNonEmpty!19521 () Bool)

(declare-fun mapRes!19521 () Bool)

(declare-fun tp!37581 () Bool)

(declare-fun e!262599 () Bool)

(assert (=> mapNonEmpty!19521 (= mapRes!19521 (and tp!37581 e!262599))))

(declare-fun mapKey!19521 () (_ BitVec 32))

(declare-fun mapValue!19521 () ValueCell!5619)

(declare-fun mapRest!19521 () (Array (_ BitVec 32) ValueCell!5619))

(assert (=> mapNonEmpty!19521 (= (arr!13253 _values!549) (store mapRest!19521 mapKey!19521 mapValue!19521))))

(declare-fun b!447184 () Bool)

(declare-fun e!262597 () Bool)

(assert (=> b!447184 (= e!262598 e!262597)))

(declare-fun res!265642 () Bool)

(assert (=> b!447184 (=> (not res!265642) (not e!262597))))

(declare-fun lt!203917 () array!27619)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27619 (_ BitVec 32)) Bool)

(assert (=> b!447184 (= res!265642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203917 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447184 (= lt!203917 (array!27620 (store (arr!13252 _keys!709) i!563 k0!794) (size!13604 _keys!709)))))

(declare-fun b!447185 () Bool)

(declare-fun e!262596 () Bool)

(assert (=> b!447185 (= e!262595 (and e!262596 mapRes!19521))))

(declare-fun condMapEmpty!19521 () Bool)

(declare-fun mapDefault!19521 () ValueCell!5619)

(assert (=> b!447185 (= condMapEmpty!19521 (= (arr!13253 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5619)) mapDefault!19521)))))

(declare-fun b!447186 () Bool)

(declare-fun res!265650 () Bool)

(assert (=> b!447186 (=> (not res!265650) (not e!262597))))

(assert (=> b!447186 (= res!265650 (arrayNoDuplicates!0 lt!203917 #b00000000000000000000000000000000 Nil!7911))))

(declare-fun b!447187 () Bool)

(declare-fun res!265640 () Bool)

(assert (=> b!447187 (=> (not res!265640) (not e!262597))))

(assert (=> b!447187 (= res!265640 (bvsle from!863 i!563))))

(declare-fun b!447188 () Bool)

(declare-fun res!265644 () Bool)

(assert (=> b!447188 (=> (not res!265644) (not e!262598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447188 (= res!265644 (validKeyInArray!0 k0!794))))

(declare-fun b!447189 () Bool)

(assert (=> b!447189 (= e!262599 tp_is_empty!11925)))

(declare-fun b!447190 () Bool)

(declare-fun res!265645 () Bool)

(assert (=> b!447190 (=> (not res!265645) (not e!262598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447190 (= res!265645 (validMask!0 mask!1025))))

(declare-fun b!447191 () Bool)

(declare-fun res!265649 () Bool)

(assert (=> b!447191 (=> (not res!265649) (not e!262598))))

(assert (=> b!447191 (= res!265649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19521 () Bool)

(assert (=> mapIsEmpty!19521 mapRes!19521))

(declare-fun b!447192 () Bool)

(assert (=> b!447192 (= e!262596 tp_is_empty!11925)))

(declare-fun b!447193 () Bool)

(declare-fun res!265643 () Bool)

(assert (=> b!447193 (=> (not res!265643) (not e!262598))))

(assert (=> b!447193 (= res!265643 (or (= (select (arr!13252 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13252 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447194 () Bool)

(declare-fun res!265639 () Bool)

(assert (=> b!447194 (=> (not res!265639) (not e!262598))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!447194 (= res!265639 (and (= (size!13605 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13604 _keys!709) (size!13605 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447195 () Bool)

(assert (=> b!447195 (= e!262597 (and (= from!863 i!563) (or (bvslt (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13604 _keys!709)))))))

(declare-fun minValue!515 () V!17005)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7802 0))(
  ( (tuple2!7803 (_1!3911 (_ BitVec 64)) (_2!3911 V!17005)) )
))
(declare-datatypes ((List!7915 0))(
  ( (Nil!7912) (Cons!7911 (h!8767 tuple2!7802) (t!13685 List!7915)) )
))
(declare-datatypes ((ListLongMap!6729 0))(
  ( (ListLongMap!6730 (toList!3380 List!7915)) )
))
(declare-fun lt!203916 () ListLongMap!6729)

(declare-fun zeroValue!515 () V!17005)

(declare-fun v!412 () V!17005)

(declare-fun getCurrentListMapNoExtraKeys!1560 (array!27619 array!27621 (_ BitVec 32) (_ BitVec 32) V!17005 V!17005 (_ BitVec 32) Int) ListLongMap!6729)

(assert (=> b!447195 (= lt!203916 (getCurrentListMapNoExtraKeys!1560 lt!203917 (array!27622 (store (arr!13253 _values!549) i!563 (ValueCellFull!5619 v!412)) (size!13605 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203915 () ListLongMap!6729)

(assert (=> b!447195 (= lt!203915 (getCurrentListMapNoExtraKeys!1560 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447196 () Bool)

(declare-fun res!265646 () Bool)

(assert (=> b!447196 (=> (not res!265646) (not e!262598))))

(assert (=> b!447196 (= res!265646 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13604 _keys!709))))))

(assert (= (and start!40584 res!265641) b!447190))

(assert (= (and b!447190 res!265645) b!447194))

(assert (= (and b!447194 res!265639) b!447191))

(assert (= (and b!447191 res!265649) b!447182))

(assert (= (and b!447182 res!265648) b!447196))

(assert (= (and b!447196 res!265646) b!447188))

(assert (= (and b!447188 res!265644) b!447193))

(assert (= (and b!447193 res!265643) b!447183))

(assert (= (and b!447183 res!265647) b!447184))

(assert (= (and b!447184 res!265642) b!447186))

(assert (= (and b!447186 res!265650) b!447187))

(assert (= (and b!447187 res!265640) b!447195))

(assert (= (and b!447185 condMapEmpty!19521) mapIsEmpty!19521))

(assert (= (and b!447185 (not condMapEmpty!19521)) mapNonEmpty!19521))

(get-info :version)

(assert (= (and mapNonEmpty!19521 ((_ is ValueCellFull!5619) mapValue!19521)) b!447189))

(assert (= (and b!447185 ((_ is ValueCellFull!5619) mapDefault!19521)) b!447192))

(assert (= start!40584 b!447185))

(declare-fun m!432125 () Bool)

(assert (=> b!447191 m!432125))

(declare-fun m!432127 () Bool)

(assert (=> b!447193 m!432127))

(declare-fun m!432129 () Bool)

(assert (=> mapNonEmpty!19521 m!432129))

(declare-fun m!432131 () Bool)

(assert (=> b!447182 m!432131))

(declare-fun m!432133 () Bool)

(assert (=> b!447184 m!432133))

(declare-fun m!432135 () Bool)

(assert (=> b!447184 m!432135))

(declare-fun m!432137 () Bool)

(assert (=> b!447188 m!432137))

(declare-fun m!432139 () Bool)

(assert (=> b!447190 m!432139))

(declare-fun m!432141 () Bool)

(assert (=> b!447186 m!432141))

(declare-fun m!432143 () Bool)

(assert (=> b!447183 m!432143))

(declare-fun m!432145 () Bool)

(assert (=> b!447195 m!432145))

(declare-fun m!432147 () Bool)

(assert (=> b!447195 m!432147))

(declare-fun m!432149 () Bool)

(assert (=> b!447195 m!432149))

(declare-fun m!432151 () Bool)

(assert (=> start!40584 m!432151))

(declare-fun m!432153 () Bool)

(assert (=> start!40584 m!432153))

(check-sat (not b!447182) (not b!447195) (not b!447188) (not b!447184) (not b!447190) (not b!447191) (not mapNonEmpty!19521) (not b!447183) (not b!447186) (not start!40584) tp_is_empty!11925 b_and!18613 (not b_next!10587))
(check-sat b_and!18613 (not b_next!10587))
