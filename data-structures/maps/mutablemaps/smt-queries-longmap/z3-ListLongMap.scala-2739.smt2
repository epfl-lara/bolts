; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40262 () Bool)

(assert start!40262)

(declare-fun b_free!10521 () Bool)

(declare-fun b_next!10521 () Bool)

(assert (=> start!40262 (= b_free!10521 (not b_next!10521))))

(declare-fun tp!37092 () Bool)

(declare-fun b_and!18507 () Bool)

(assert (=> start!40262 (= tp!37092 b_and!18507)))

(declare-fun b!441665 () Bool)

(declare-fun res!261608 () Bool)

(declare-fun e!260005 () Bool)

(assert (=> b!441665 (=> (not res!261608) (not e!260005))))

(declare-datatypes ((array!27133 0))(
  ( (array!27134 (arr!13013 (Array (_ BitVec 32) (_ BitVec 64))) (size!13365 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27133)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16669 0))(
  ( (V!16670 (val!5881 Int)) )
))
(declare-datatypes ((ValueCell!5493 0))(
  ( (ValueCellFull!5493 (v!8124 V!16669)) (EmptyCell!5493) )
))
(declare-datatypes ((array!27135 0))(
  ( (array!27136 (arr!13014 (Array (_ BitVec 32) ValueCell!5493)) (size!13366 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27135)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!441665 (= res!261608 (and (= (size!13366 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13365 _keys!709) (size!13366 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441666 () Bool)

(declare-fun e!260010 () Bool)

(declare-fun tp_is_empty!11673 () Bool)

(assert (=> b!441666 (= e!260010 tp_is_empty!11673)))

(declare-fun b!441667 () Bool)

(declare-fun res!261614 () Bool)

(assert (=> b!441667 (=> (not res!261614) (not e!260005))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441667 (= res!261614 (validKeyInArray!0 k0!794))))

(declare-fun b!441668 () Bool)

(declare-fun res!261609 () Bool)

(assert (=> b!441668 (=> (not res!261609) (not e!260005))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441668 (= res!261609 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13365 _keys!709))))))

(declare-fun b!441669 () Bool)

(declare-fun e!260011 () Bool)

(assert (=> b!441669 (= e!260011 (not true))))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16669)

(declare-fun lt!202990 () array!27135)

(declare-fun v!412 () V!16669)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!16669)

(declare-fun lt!202989 () array!27133)

(declare-datatypes ((tuple2!7750 0))(
  ( (tuple2!7751 (_1!3885 (_ BitVec 64)) (_2!3885 V!16669)) )
))
(declare-datatypes ((List!7790 0))(
  ( (Nil!7787) (Cons!7786 (h!8642 tuple2!7750) (t!13554 List!7790)) )
))
(declare-datatypes ((ListLongMap!6677 0))(
  ( (ListLongMap!6678 (toList!3354 List!7790)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1536 (array!27133 array!27135 (_ BitVec 32) (_ BitVec 32) V!16669 V!16669 (_ BitVec 32) Int) ListLongMap!6677)

(declare-fun +!1487 (ListLongMap!6677 tuple2!7750) ListLongMap!6677)

(assert (=> b!441669 (= (getCurrentListMapNoExtraKeys!1536 lt!202989 lt!202990 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1487 (getCurrentListMapNoExtraKeys!1536 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7751 k0!794 v!412)))))

(declare-datatypes ((Unit!13089 0))(
  ( (Unit!13090) )
))
(declare-fun lt!202992 () Unit!13089)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!665 (array!27133 array!27135 (_ BitVec 32) (_ BitVec 32) V!16669 V!16669 (_ BitVec 32) (_ BitVec 64) V!16669 (_ BitVec 32) Int) Unit!13089)

(assert (=> b!441669 (= lt!202992 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!665 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441670 () Bool)

(declare-fun e!260008 () Bool)

(assert (=> b!441670 (= e!260005 e!260008)))

(declare-fun res!261618 () Bool)

(assert (=> b!441670 (=> (not res!261618) (not e!260008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27133 (_ BitVec 32)) Bool)

(assert (=> b!441670 (= res!261618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202989 mask!1025))))

(assert (=> b!441670 (= lt!202989 (array!27134 (store (arr!13013 _keys!709) i!563 k0!794) (size!13365 _keys!709)))))

(declare-fun res!261616 () Bool)

(assert (=> start!40262 (=> (not res!261616) (not e!260005))))

(assert (=> start!40262 (= res!261616 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13365 _keys!709))))))

(assert (=> start!40262 e!260005))

(assert (=> start!40262 tp_is_empty!11673))

(assert (=> start!40262 tp!37092))

(assert (=> start!40262 true))

(declare-fun e!260006 () Bool)

(declare-fun array_inv!9434 (array!27135) Bool)

(assert (=> start!40262 (and (array_inv!9434 _values!549) e!260006)))

(declare-fun array_inv!9435 (array!27133) Bool)

(assert (=> start!40262 (array_inv!9435 _keys!709)))

(declare-fun b!441671 () Bool)

(declare-fun res!261617 () Bool)

(assert (=> b!441671 (=> (not res!261617) (not e!260005))))

(declare-fun arrayContainsKey!0 (array!27133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441671 (= res!261617 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19131 () Bool)

(declare-fun mapRes!19131 () Bool)

(assert (=> mapIsEmpty!19131 mapRes!19131))

(declare-fun b!441672 () Bool)

(declare-fun res!261606 () Bool)

(assert (=> b!441672 (=> (not res!261606) (not e!260005))))

(assert (=> b!441672 (= res!261606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441673 () Bool)

(declare-fun res!261612 () Bool)

(assert (=> b!441673 (=> (not res!261612) (not e!260005))))

(declare-datatypes ((List!7791 0))(
  ( (Nil!7788) (Cons!7787 (h!8643 (_ BitVec 64)) (t!13555 List!7791)) )
))
(declare-fun arrayNoDuplicates!0 (array!27133 (_ BitVec 32) List!7791) Bool)

(assert (=> b!441673 (= res!261612 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7788))))

(declare-fun b!441674 () Bool)

(declare-fun res!261615 () Bool)

(assert (=> b!441674 (=> (not res!261615) (not e!260008))))

(assert (=> b!441674 (= res!261615 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19131 () Bool)

(declare-fun tp!37091 () Bool)

(assert (=> mapNonEmpty!19131 (= mapRes!19131 (and tp!37091 e!260010))))

(declare-fun mapKey!19131 () (_ BitVec 32))

(declare-fun mapValue!19131 () ValueCell!5493)

(declare-fun mapRest!19131 () (Array (_ BitVec 32) ValueCell!5493))

(assert (=> mapNonEmpty!19131 (= (arr!13014 _values!549) (store mapRest!19131 mapKey!19131 mapValue!19131))))

(declare-fun b!441675 () Bool)

(declare-fun res!261613 () Bool)

(assert (=> b!441675 (=> (not res!261613) (not e!260005))))

(assert (=> b!441675 (= res!261613 (or (= (select (arr!13013 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13013 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441676 () Bool)

(assert (=> b!441676 (= e!260008 e!260011)))

(declare-fun res!261607 () Bool)

(assert (=> b!441676 (=> (not res!261607) (not e!260011))))

(assert (=> b!441676 (= res!261607 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202988 () ListLongMap!6677)

(assert (=> b!441676 (= lt!202988 (getCurrentListMapNoExtraKeys!1536 lt!202989 lt!202990 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441676 (= lt!202990 (array!27136 (store (arr!13014 _values!549) i!563 (ValueCellFull!5493 v!412)) (size!13366 _values!549)))))

(declare-fun lt!202991 () ListLongMap!6677)

(assert (=> b!441676 (= lt!202991 (getCurrentListMapNoExtraKeys!1536 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441677 () Bool)

(declare-fun res!261610 () Bool)

(assert (=> b!441677 (=> (not res!261610) (not e!260005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441677 (= res!261610 (validMask!0 mask!1025))))

(declare-fun b!441678 () Bool)

(declare-fun res!261611 () Bool)

(assert (=> b!441678 (=> (not res!261611) (not e!260008))))

(assert (=> b!441678 (= res!261611 (arrayNoDuplicates!0 lt!202989 #b00000000000000000000000000000000 Nil!7788))))

(declare-fun b!441679 () Bool)

(declare-fun e!260009 () Bool)

(assert (=> b!441679 (= e!260009 tp_is_empty!11673)))

(declare-fun b!441680 () Bool)

(assert (=> b!441680 (= e!260006 (and e!260009 mapRes!19131))))

(declare-fun condMapEmpty!19131 () Bool)

(declare-fun mapDefault!19131 () ValueCell!5493)

(assert (=> b!441680 (= condMapEmpty!19131 (= (arr!13014 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5493)) mapDefault!19131)))))

(assert (= (and start!40262 res!261616) b!441677))

(assert (= (and b!441677 res!261610) b!441665))

(assert (= (and b!441665 res!261608) b!441672))

(assert (= (and b!441672 res!261606) b!441673))

(assert (= (and b!441673 res!261612) b!441668))

(assert (= (and b!441668 res!261609) b!441667))

(assert (= (and b!441667 res!261614) b!441675))

(assert (= (and b!441675 res!261613) b!441671))

(assert (= (and b!441671 res!261617) b!441670))

(assert (= (and b!441670 res!261618) b!441678))

(assert (= (and b!441678 res!261611) b!441674))

(assert (= (and b!441674 res!261615) b!441676))

(assert (= (and b!441676 res!261607) b!441669))

(assert (= (and b!441680 condMapEmpty!19131) mapIsEmpty!19131))

(assert (= (and b!441680 (not condMapEmpty!19131)) mapNonEmpty!19131))

(get-info :version)

(assert (= (and mapNonEmpty!19131 ((_ is ValueCellFull!5493) mapValue!19131)) b!441666))

(assert (= (and b!441680 ((_ is ValueCellFull!5493) mapDefault!19131)) b!441679))

(assert (= start!40262 b!441680))

(declare-fun m!428451 () Bool)

(assert (=> b!441667 m!428451))

(declare-fun m!428453 () Bool)

(assert (=> b!441675 m!428453))

(declare-fun m!428455 () Bool)

(assert (=> b!441670 m!428455))

(declare-fun m!428457 () Bool)

(assert (=> b!441670 m!428457))

(declare-fun m!428459 () Bool)

(assert (=> start!40262 m!428459))

(declare-fun m!428461 () Bool)

(assert (=> start!40262 m!428461))

(declare-fun m!428463 () Bool)

(assert (=> b!441677 m!428463))

(declare-fun m!428465 () Bool)

(assert (=> b!441676 m!428465))

(declare-fun m!428467 () Bool)

(assert (=> b!441676 m!428467))

(declare-fun m!428469 () Bool)

(assert (=> b!441676 m!428469))

(declare-fun m!428471 () Bool)

(assert (=> b!441669 m!428471))

(declare-fun m!428473 () Bool)

(assert (=> b!441669 m!428473))

(assert (=> b!441669 m!428473))

(declare-fun m!428475 () Bool)

(assert (=> b!441669 m!428475))

(declare-fun m!428477 () Bool)

(assert (=> b!441669 m!428477))

(declare-fun m!428479 () Bool)

(assert (=> b!441672 m!428479))

(declare-fun m!428481 () Bool)

(assert (=> b!441671 m!428481))

(declare-fun m!428483 () Bool)

(assert (=> b!441678 m!428483))

(declare-fun m!428485 () Bool)

(assert (=> b!441673 m!428485))

(declare-fun m!428487 () Bool)

(assert (=> mapNonEmpty!19131 m!428487))

(check-sat (not b_next!10521) (not b!441671) (not b!441672) (not b!441670) (not b!441678) (not b!441667) b_and!18507 (not b!441677) (not b!441669) (not b!441673) tp_is_empty!11673 (not b!441676) (not start!40262) (not mapNonEmpty!19131))
(check-sat b_and!18507 (not b_next!10521))
