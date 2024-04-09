; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39554 () Bool)

(assert start!39554)

(declare-fun b_free!9813 () Bool)

(declare-fun b_next!9813 () Bool)

(assert (=> start!39554 (= b_free!9813 (not b_next!9813))))

(declare-fun tp!34967 () Bool)

(declare-fun b_and!17487 () Bool)

(assert (=> start!39554 (= tp!34967 b_and!17487)))

(declare-fun b!422844 () Bool)

(declare-fun res!247115 () Bool)

(declare-fun e!251470 () Bool)

(assert (=> b!422844 (=> (not res!247115) (not e!251470))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422844 (= res!247115 (bvsle from!863 i!563))))

(declare-fun b!422845 () Bool)

(declare-fun res!247119 () Bool)

(declare-fun e!251469 () Bool)

(assert (=> b!422845 (=> (not res!247119) (not e!251469))))

(declare-datatypes ((array!25757 0))(
  ( (array!25758 (arr!12325 (Array (_ BitVec 32) (_ BitVec 64))) (size!12677 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25757)

(declare-datatypes ((List!7230 0))(
  ( (Nil!7227) (Cons!7226 (h!8082 (_ BitVec 64)) (t!12682 List!7230)) )
))
(declare-fun arrayNoDuplicates!0 (array!25757 (_ BitVec 32) List!7230) Bool)

(assert (=> b!422845 (= res!247119 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7227))))

(declare-fun b!422846 () Bool)

(declare-fun e!251472 () Bool)

(declare-fun tp_is_empty!10965 () Bool)

(assert (=> b!422846 (= e!251472 tp_is_empty!10965)))

(declare-fun b!422847 () Bool)

(assert (=> b!422847 (= e!251469 e!251470)))

(declare-fun res!247113 () Bool)

(assert (=> b!422847 (=> (not res!247113) (not e!251470))))

(declare-fun lt!194050 () array!25757)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25757 (_ BitVec 32)) Bool)

(assert (=> b!422847 (= res!247113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194050 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!422847 (= lt!194050 (array!25758 (store (arr!12325 _keys!709) i!563 k0!794) (size!12677 _keys!709)))))

(declare-fun mapNonEmpty!18069 () Bool)

(declare-fun mapRes!18069 () Bool)

(declare-fun tp!34968 () Bool)

(declare-fun e!251473 () Bool)

(assert (=> mapNonEmpty!18069 (= mapRes!18069 (and tp!34968 e!251473))))

(declare-datatypes ((V!15725 0))(
  ( (V!15726 (val!5527 Int)) )
))
(declare-datatypes ((ValueCell!5139 0))(
  ( (ValueCellFull!5139 (v!7770 V!15725)) (EmptyCell!5139) )
))
(declare-fun mapValue!18069 () ValueCell!5139)

(declare-datatypes ((array!25759 0))(
  ( (array!25760 (arr!12326 (Array (_ BitVec 32) ValueCell!5139)) (size!12678 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25759)

(declare-fun mapRest!18069 () (Array (_ BitVec 32) ValueCell!5139))

(declare-fun mapKey!18069 () (_ BitVec 32))

(assert (=> mapNonEmpty!18069 (= (arr!12326 _values!549) (store mapRest!18069 mapKey!18069 mapValue!18069))))

(declare-fun b!422848 () Bool)

(declare-fun res!247111 () Bool)

(assert (=> b!422848 (=> (not res!247111) (not e!251469))))

(assert (=> b!422848 (= res!247111 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12677 _keys!709))))))

(declare-fun b!422849 () Bool)

(declare-fun res!247117 () Bool)

(assert (=> b!422849 (=> (not res!247117) (not e!251469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422849 (= res!247117 (validMask!0 mask!1025))))

(declare-fun b!422850 () Bool)

(declare-fun res!247112 () Bool)

(assert (=> b!422850 (=> (not res!247112) (not e!251469))))

(declare-fun arrayContainsKey!0 (array!25757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422850 (= res!247112 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422851 () Bool)

(declare-fun e!251471 () Bool)

(assert (=> b!422851 (= e!251471 (and e!251472 mapRes!18069))))

(declare-fun condMapEmpty!18069 () Bool)

(declare-fun mapDefault!18069 () ValueCell!5139)

(assert (=> b!422851 (= condMapEmpty!18069 (= (arr!12326 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5139)) mapDefault!18069)))))

(declare-fun mapIsEmpty!18069 () Bool)

(assert (=> mapIsEmpty!18069 mapRes!18069))

(declare-fun b!422852 () Bool)

(declare-fun res!247116 () Bool)

(assert (=> b!422852 (=> (not res!247116) (not e!251469))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!422852 (= res!247116 (and (= (size!12678 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12677 _keys!709) (size!12678 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422853 () Bool)

(declare-fun res!247121 () Bool)

(assert (=> b!422853 (=> (not res!247121) (not e!251469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422853 (= res!247121 (validKeyInArray!0 k0!794))))

(declare-fun b!422854 () Bool)

(declare-fun res!247122 () Bool)

(assert (=> b!422854 (=> (not res!247122) (not e!251469))))

(assert (=> b!422854 (= res!247122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422855 () Bool)

(assert (=> b!422855 (= e!251470 false)))

(declare-fun minValue!515 () V!15725)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15725)

(declare-datatypes ((tuple2!7186 0))(
  ( (tuple2!7187 (_1!3603 (_ BitVec 64)) (_2!3603 V!15725)) )
))
(declare-datatypes ((List!7231 0))(
  ( (Nil!7228) (Cons!7227 (h!8083 tuple2!7186) (t!12683 List!7231)) )
))
(declare-datatypes ((ListLongMap!6113 0))(
  ( (ListLongMap!6114 (toList!3072 List!7231)) )
))
(declare-fun lt!194052 () ListLongMap!6113)

(declare-fun v!412 () V!15725)

(declare-fun getCurrentListMapNoExtraKeys!1273 (array!25757 array!25759 (_ BitVec 32) (_ BitVec 32) V!15725 V!15725 (_ BitVec 32) Int) ListLongMap!6113)

(assert (=> b!422855 (= lt!194052 (getCurrentListMapNoExtraKeys!1273 lt!194050 (array!25760 (store (arr!12326 _values!549) i!563 (ValueCellFull!5139 v!412)) (size!12678 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194051 () ListLongMap!6113)

(assert (=> b!422855 (= lt!194051 (getCurrentListMapNoExtraKeys!1273 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422856 () Bool)

(declare-fun res!247118 () Bool)

(assert (=> b!422856 (=> (not res!247118) (not e!251470))))

(assert (=> b!422856 (= res!247118 (arrayNoDuplicates!0 lt!194050 #b00000000000000000000000000000000 Nil!7227))))

(declare-fun b!422857 () Bool)

(assert (=> b!422857 (= e!251473 tp_is_empty!10965)))

(declare-fun res!247114 () Bool)

(assert (=> start!39554 (=> (not res!247114) (not e!251469))))

(assert (=> start!39554 (= res!247114 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12677 _keys!709))))))

(assert (=> start!39554 e!251469))

(assert (=> start!39554 tp_is_empty!10965))

(assert (=> start!39554 tp!34967))

(assert (=> start!39554 true))

(declare-fun array_inv!8980 (array!25759) Bool)

(assert (=> start!39554 (and (array_inv!8980 _values!549) e!251471)))

(declare-fun array_inv!8981 (array!25757) Bool)

(assert (=> start!39554 (array_inv!8981 _keys!709)))

(declare-fun b!422858 () Bool)

(declare-fun res!247120 () Bool)

(assert (=> b!422858 (=> (not res!247120) (not e!251469))))

(assert (=> b!422858 (= res!247120 (or (= (select (arr!12325 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12325 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39554 res!247114) b!422849))

(assert (= (and b!422849 res!247117) b!422852))

(assert (= (and b!422852 res!247116) b!422854))

(assert (= (and b!422854 res!247122) b!422845))

(assert (= (and b!422845 res!247119) b!422848))

(assert (= (and b!422848 res!247111) b!422853))

(assert (= (and b!422853 res!247121) b!422858))

(assert (= (and b!422858 res!247120) b!422850))

(assert (= (and b!422850 res!247112) b!422847))

(assert (= (and b!422847 res!247113) b!422856))

(assert (= (and b!422856 res!247118) b!422844))

(assert (= (and b!422844 res!247115) b!422855))

(assert (= (and b!422851 condMapEmpty!18069) mapIsEmpty!18069))

(assert (= (and b!422851 (not condMapEmpty!18069)) mapNonEmpty!18069))

(get-info :version)

(assert (= (and mapNonEmpty!18069 ((_ is ValueCellFull!5139) mapValue!18069)) b!422857))

(assert (= (and b!422851 ((_ is ValueCellFull!5139) mapDefault!18069)) b!422846))

(assert (= start!39554 b!422851))

(declare-fun m!412495 () Bool)

(assert (=> b!422849 m!412495))

(declare-fun m!412497 () Bool)

(assert (=> b!422850 m!412497))

(declare-fun m!412499 () Bool)

(assert (=> b!422847 m!412499))

(declare-fun m!412501 () Bool)

(assert (=> b!422847 m!412501))

(declare-fun m!412503 () Bool)

(assert (=> b!422854 m!412503))

(declare-fun m!412505 () Bool)

(assert (=> mapNonEmpty!18069 m!412505))

(declare-fun m!412507 () Bool)

(assert (=> b!422858 m!412507))

(declare-fun m!412509 () Bool)

(assert (=> b!422845 m!412509))

(declare-fun m!412511 () Bool)

(assert (=> b!422853 m!412511))

(declare-fun m!412513 () Bool)

(assert (=> start!39554 m!412513))

(declare-fun m!412515 () Bool)

(assert (=> start!39554 m!412515))

(declare-fun m!412517 () Bool)

(assert (=> b!422855 m!412517))

(declare-fun m!412519 () Bool)

(assert (=> b!422855 m!412519))

(declare-fun m!412521 () Bool)

(assert (=> b!422855 m!412521))

(declare-fun m!412523 () Bool)

(assert (=> b!422856 m!412523))

(check-sat (not b!422855) (not start!39554) tp_is_empty!10965 (not b_next!9813) (not b!422850) (not b!422845) (not b!422853) (not b!422854) (not b!422856) b_and!17487 (not b!422847) (not b!422849) (not mapNonEmpty!18069))
(check-sat b_and!17487 (not b_next!9813))
