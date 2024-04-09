; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40452 () Bool)

(assert start!40452)

(declare-fun b!444809 () Bool)

(declare-fun e!261527 () Bool)

(assert (=> b!444809 (= e!261527 false)))

(declare-fun lt!203540 () Bool)

(declare-datatypes ((array!27427 0))(
  ( (array!27428 (arr!13158 (Array (_ BitVec 32) (_ BitVec 64))) (size!13510 (_ BitVec 32))) )
))
(declare-fun lt!203541 () array!27427)

(declare-datatypes ((List!7853 0))(
  ( (Nil!7850) (Cons!7849 (h!8705 (_ BitVec 64)) (t!13619 List!7853)) )
))
(declare-fun arrayNoDuplicates!0 (array!27427 (_ BitVec 32) List!7853) Bool)

(assert (=> b!444809 (= lt!203540 (arrayNoDuplicates!0 lt!203541 #b00000000000000000000000000000000 Nil!7850))))

(declare-fun b!444810 () Bool)

(declare-fun res!263930 () Bool)

(declare-fun e!261530 () Bool)

(assert (=> b!444810 (=> (not res!263930) (not e!261530))))

(declare-fun _keys!709 () array!27427)

(assert (=> b!444810 (= res!263930 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7850))))

(declare-fun b!444811 () Bool)

(declare-fun res!263926 () Bool)

(assert (=> b!444811 (=> (not res!263926) (not e!261530))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27427 (_ BitVec 32)) Bool)

(assert (=> b!444811 (= res!263926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444812 () Bool)

(assert (=> b!444812 (= e!261530 e!261527)))

(declare-fun res!263934 () Bool)

(assert (=> b!444812 (=> (not res!263934) (not e!261527))))

(assert (=> b!444812 (= res!263934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203541 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444812 (= lt!203541 (array!27428 (store (arr!13158 _keys!709) i!563 k0!794) (size!13510 _keys!709)))))

(declare-fun b!444813 () Bool)

(declare-fun res!263935 () Bool)

(assert (=> b!444813 (=> (not res!263935) (not e!261530))))

(assert (=> b!444813 (= res!263935 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13510 _keys!709))))))

(declare-fun b!444814 () Bool)

(declare-fun res!263927 () Bool)

(assert (=> b!444814 (=> (not res!263927) (not e!261530))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16877 0))(
  ( (V!16878 (val!5959 Int)) )
))
(declare-datatypes ((ValueCell!5571 0))(
  ( (ValueCellFull!5571 (v!8206 V!16877)) (EmptyCell!5571) )
))
(declare-datatypes ((array!27429 0))(
  ( (array!27430 (arr!13159 (Array (_ BitVec 32) ValueCell!5571)) (size!13511 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27429)

(assert (=> b!444814 (= res!263927 (and (= (size!13511 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13510 _keys!709) (size!13511 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444815 () Bool)

(declare-fun e!261531 () Bool)

(declare-fun e!261528 () Bool)

(declare-fun mapRes!19371 () Bool)

(assert (=> b!444815 (= e!261531 (and e!261528 mapRes!19371))))

(declare-fun condMapEmpty!19371 () Bool)

(declare-fun mapDefault!19371 () ValueCell!5571)

(assert (=> b!444815 (= condMapEmpty!19371 (= (arr!13159 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5571)) mapDefault!19371)))))

(declare-fun b!444816 () Bool)

(declare-fun res!263932 () Bool)

(assert (=> b!444816 (=> (not res!263932) (not e!261530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444816 (= res!263932 (validMask!0 mask!1025))))

(declare-fun b!444817 () Bool)

(declare-fun tp_is_empty!11829 () Bool)

(assert (=> b!444817 (= e!261528 tp_is_empty!11829)))

(declare-fun b!444818 () Bool)

(declare-fun res!263931 () Bool)

(assert (=> b!444818 (=> (not res!263931) (not e!261530))))

(declare-fun arrayContainsKey!0 (array!27427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444818 (= res!263931 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444819 () Bool)

(declare-fun e!261526 () Bool)

(assert (=> b!444819 (= e!261526 tp_is_empty!11829)))

(declare-fun mapNonEmpty!19371 () Bool)

(declare-fun tp!37353 () Bool)

(assert (=> mapNonEmpty!19371 (= mapRes!19371 (and tp!37353 e!261526))))

(declare-fun mapKey!19371 () (_ BitVec 32))

(declare-fun mapRest!19371 () (Array (_ BitVec 32) ValueCell!5571))

(declare-fun mapValue!19371 () ValueCell!5571)

(assert (=> mapNonEmpty!19371 (= (arr!13159 _values!549) (store mapRest!19371 mapKey!19371 mapValue!19371))))

(declare-fun b!444820 () Bool)

(declare-fun res!263933 () Bool)

(assert (=> b!444820 (=> (not res!263933) (not e!261530))))

(assert (=> b!444820 (= res!263933 (or (= (select (arr!13158 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13158 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444821 () Bool)

(declare-fun res!263929 () Bool)

(assert (=> b!444821 (=> (not res!263929) (not e!261530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444821 (= res!263929 (validKeyInArray!0 k0!794))))

(declare-fun res!263928 () Bool)

(assert (=> start!40452 (=> (not res!263928) (not e!261530))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40452 (= res!263928 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13510 _keys!709))))))

(assert (=> start!40452 e!261530))

(assert (=> start!40452 true))

(declare-fun array_inv!9530 (array!27429) Bool)

(assert (=> start!40452 (and (array_inv!9530 _values!549) e!261531)))

(declare-fun array_inv!9531 (array!27427) Bool)

(assert (=> start!40452 (array_inv!9531 _keys!709)))

(declare-fun mapIsEmpty!19371 () Bool)

(assert (=> mapIsEmpty!19371 mapRes!19371))

(assert (= (and start!40452 res!263928) b!444816))

(assert (= (and b!444816 res!263932) b!444814))

(assert (= (and b!444814 res!263927) b!444811))

(assert (= (and b!444811 res!263926) b!444810))

(assert (= (and b!444810 res!263930) b!444813))

(assert (= (and b!444813 res!263935) b!444821))

(assert (= (and b!444821 res!263929) b!444820))

(assert (= (and b!444820 res!263933) b!444818))

(assert (= (and b!444818 res!263931) b!444812))

(assert (= (and b!444812 res!263934) b!444809))

(assert (= (and b!444815 condMapEmpty!19371) mapIsEmpty!19371))

(assert (= (and b!444815 (not condMapEmpty!19371)) mapNonEmpty!19371))

(get-info :version)

(assert (= (and mapNonEmpty!19371 ((_ is ValueCellFull!5571) mapValue!19371)) b!444819))

(assert (= (and b!444815 ((_ is ValueCellFull!5571) mapDefault!19371)) b!444817))

(assert (= start!40452 b!444815))

(declare-fun m!430511 () Bool)

(assert (=> b!444821 m!430511))

(declare-fun m!430513 () Bool)

(assert (=> b!444811 m!430513))

(declare-fun m!430515 () Bool)

(assert (=> b!444809 m!430515))

(declare-fun m!430517 () Bool)

(assert (=> start!40452 m!430517))

(declare-fun m!430519 () Bool)

(assert (=> start!40452 m!430519))

(declare-fun m!430521 () Bool)

(assert (=> b!444816 m!430521))

(declare-fun m!430523 () Bool)

(assert (=> mapNonEmpty!19371 m!430523))

(declare-fun m!430525 () Bool)

(assert (=> b!444818 m!430525))

(declare-fun m!430527 () Bool)

(assert (=> b!444812 m!430527))

(declare-fun m!430529 () Bool)

(assert (=> b!444812 m!430529))

(declare-fun m!430531 () Bool)

(assert (=> b!444820 m!430531))

(declare-fun m!430533 () Bool)

(assert (=> b!444810 m!430533))

(check-sat (not b!444809) (not b!444811) (not b!444812) tp_is_empty!11829 (not mapNonEmpty!19371) (not b!444818) (not start!40452) (not b!444810) (not b!444816) (not b!444821))
(check-sat)
