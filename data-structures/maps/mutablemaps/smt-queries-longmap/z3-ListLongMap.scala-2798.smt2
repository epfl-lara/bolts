; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40686 () Bool)

(assert start!40686)

(declare-fun b_free!10689 () Bool)

(declare-fun b_next!10689 () Bool)

(assert (=> start!40686 (= b_free!10689 (not b_next!10689))))

(declare-fun tp!37887 () Bool)

(declare-fun b_and!18715 () Bool)

(assert (=> start!40686 (= tp!37887 b_and!18715)))

(declare-fun b!449477 () Bool)

(declare-fun res!267486 () Bool)

(declare-fun e!263516 () Bool)

(assert (=> b!449477 (=> (not res!267486) (not e!263516))))

(declare-datatypes ((array!27821 0))(
  ( (array!27822 (arr!13353 (Array (_ BitVec 32) (_ BitVec 64))) (size!13705 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27821)

(declare-datatypes ((List!8002 0))(
  ( (Nil!7999) (Cons!7998 (h!8854 (_ BitVec 64)) (t!13772 List!8002)) )
))
(declare-fun arrayNoDuplicates!0 (array!27821 (_ BitVec 32) List!8002) Bool)

(assert (=> b!449477 (= res!267486 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7999))))

(declare-fun b!449478 () Bool)

(declare-fun res!267481 () Bool)

(declare-fun e!263512 () Bool)

(assert (=> b!449478 (=> (not res!267481) (not e!263512))))

(declare-fun lt!204376 () array!27821)

(assert (=> b!449478 (= res!267481 (arrayNoDuplicates!0 lt!204376 #b00000000000000000000000000000000 Nil!7999))))

(declare-fun res!267479 () Bool)

(assert (=> start!40686 (=> (not res!267479) (not e!263516))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40686 (= res!267479 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13705 _keys!709))))))

(assert (=> start!40686 e!263516))

(declare-fun tp_is_empty!12027 () Bool)

(assert (=> start!40686 tp_is_empty!12027))

(assert (=> start!40686 tp!37887))

(assert (=> start!40686 true))

(declare-datatypes ((V!17141 0))(
  ( (V!17142 (val!6058 Int)) )
))
(declare-datatypes ((ValueCell!5670 0))(
  ( (ValueCellFull!5670 (v!8309 V!17141)) (EmptyCell!5670) )
))
(declare-datatypes ((array!27823 0))(
  ( (array!27824 (arr!13354 (Array (_ BitVec 32) ValueCell!5670)) (size!13706 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27823)

(declare-fun e!263515 () Bool)

(declare-fun array_inv!9662 (array!27823) Bool)

(assert (=> start!40686 (and (array_inv!9662 _values!549) e!263515)))

(declare-fun array_inv!9663 (array!27821) Bool)

(assert (=> start!40686 (array_inv!9663 _keys!709)))

(declare-fun mapNonEmpty!19674 () Bool)

(declare-fun mapRes!19674 () Bool)

(declare-fun tp!37886 () Bool)

(declare-fun e!263513 () Bool)

(assert (=> mapNonEmpty!19674 (= mapRes!19674 (and tp!37886 e!263513))))

(declare-fun mapKey!19674 () (_ BitVec 32))

(declare-fun mapRest!19674 () (Array (_ BitVec 32) ValueCell!5670))

(declare-fun mapValue!19674 () ValueCell!5670)

(assert (=> mapNonEmpty!19674 (= (arr!13354 _values!549) (store mapRest!19674 mapKey!19674 mapValue!19674))))

(declare-fun b!449479 () Bool)

(declare-fun res!267484 () Bool)

(assert (=> b!449479 (=> (not res!267484) (not e!263512))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449479 (= res!267484 (bvsle from!863 i!563))))

(declare-fun b!449480 () Bool)

(declare-fun res!267478 () Bool)

(assert (=> b!449480 (=> (not res!267478) (not e!263516))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449480 (= res!267478 (validMask!0 mask!1025))))

(declare-fun b!449481 () Bool)

(declare-fun res!267477 () Bool)

(assert (=> b!449481 (=> (not res!267477) (not e!263516))))

(assert (=> b!449481 (= res!267477 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13705 _keys!709))))))

(declare-fun b!449482 () Bool)

(declare-fun e!263514 () Bool)

(assert (=> b!449482 (= e!263515 (and e!263514 mapRes!19674))))

(declare-fun condMapEmpty!19674 () Bool)

(declare-fun mapDefault!19674 () ValueCell!5670)

(assert (=> b!449482 (= condMapEmpty!19674 (= (arr!13354 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5670)) mapDefault!19674)))))

(declare-fun b!449483 () Bool)

(assert (=> b!449483 (= e!263512 false)))

(declare-fun minValue!515 () V!17141)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17141)

(declare-datatypes ((tuple2!7892 0))(
  ( (tuple2!7893 (_1!3956 (_ BitVec 64)) (_2!3956 V!17141)) )
))
(declare-datatypes ((List!8003 0))(
  ( (Nil!8000) (Cons!7999 (h!8855 tuple2!7892) (t!13773 List!8003)) )
))
(declare-datatypes ((ListLongMap!6819 0))(
  ( (ListLongMap!6820 (toList!3425 List!8003)) )
))
(declare-fun lt!204375 () ListLongMap!6819)

(declare-fun v!412 () V!17141)

(declare-fun getCurrentListMapNoExtraKeys!1605 (array!27821 array!27823 (_ BitVec 32) (_ BitVec 32) V!17141 V!17141 (_ BitVec 32) Int) ListLongMap!6819)

(assert (=> b!449483 (= lt!204375 (getCurrentListMapNoExtraKeys!1605 lt!204376 (array!27824 (store (arr!13354 _values!549) i!563 (ValueCellFull!5670 v!412)) (size!13706 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204374 () ListLongMap!6819)

(assert (=> b!449483 (= lt!204374 (getCurrentListMapNoExtraKeys!1605 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449484 () Bool)

(declare-fun res!267483 () Bool)

(assert (=> b!449484 (=> (not res!267483) (not e!263516))))

(assert (=> b!449484 (= res!267483 (or (= (select (arr!13353 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13353 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449485 () Bool)

(declare-fun res!267482 () Bool)

(assert (=> b!449485 (=> (not res!267482) (not e!263516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27821 (_ BitVec 32)) Bool)

(assert (=> b!449485 (= res!267482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449486 () Bool)

(declare-fun res!267485 () Bool)

(assert (=> b!449486 (=> (not res!267485) (not e!263516))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449486 (= res!267485 (validKeyInArray!0 k0!794))))

(declare-fun b!449487 () Bool)

(declare-fun res!267475 () Bool)

(assert (=> b!449487 (=> (not res!267475) (not e!263516))))

(declare-fun arrayContainsKey!0 (array!27821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449487 (= res!267475 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!449488 () Bool)

(assert (=> b!449488 (= e!263513 tp_is_empty!12027)))

(declare-fun mapIsEmpty!19674 () Bool)

(assert (=> mapIsEmpty!19674 mapRes!19674))

(declare-fun b!449489 () Bool)

(declare-fun res!267476 () Bool)

(assert (=> b!449489 (=> (not res!267476) (not e!263516))))

(assert (=> b!449489 (= res!267476 (and (= (size!13706 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13705 _keys!709) (size!13706 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449490 () Bool)

(assert (=> b!449490 (= e!263514 tp_is_empty!12027)))

(declare-fun b!449491 () Bool)

(assert (=> b!449491 (= e!263516 e!263512)))

(declare-fun res!267480 () Bool)

(assert (=> b!449491 (=> (not res!267480) (not e!263512))))

(assert (=> b!449491 (= res!267480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204376 mask!1025))))

(assert (=> b!449491 (= lt!204376 (array!27822 (store (arr!13353 _keys!709) i!563 k0!794) (size!13705 _keys!709)))))

(assert (= (and start!40686 res!267479) b!449480))

(assert (= (and b!449480 res!267478) b!449489))

(assert (= (and b!449489 res!267476) b!449485))

(assert (= (and b!449485 res!267482) b!449477))

(assert (= (and b!449477 res!267486) b!449481))

(assert (= (and b!449481 res!267477) b!449486))

(assert (= (and b!449486 res!267485) b!449484))

(assert (= (and b!449484 res!267483) b!449487))

(assert (= (and b!449487 res!267475) b!449491))

(assert (= (and b!449491 res!267480) b!449478))

(assert (= (and b!449478 res!267481) b!449479))

(assert (= (and b!449479 res!267484) b!449483))

(assert (= (and b!449482 condMapEmpty!19674) mapIsEmpty!19674))

(assert (= (and b!449482 (not condMapEmpty!19674)) mapNonEmpty!19674))

(get-info :version)

(assert (= (and mapNonEmpty!19674 ((_ is ValueCellFull!5670) mapValue!19674)) b!449488))

(assert (= (and b!449482 ((_ is ValueCellFull!5670) mapDefault!19674)) b!449490))

(assert (= start!40686 b!449482))

(declare-fun m!433655 () Bool)

(assert (=> b!449478 m!433655))

(declare-fun m!433657 () Bool)

(assert (=> b!449486 m!433657))

(declare-fun m!433659 () Bool)

(assert (=> b!449487 m!433659))

(declare-fun m!433661 () Bool)

(assert (=> b!449477 m!433661))

(declare-fun m!433663 () Bool)

(assert (=> b!449485 m!433663))

(declare-fun m!433665 () Bool)

(assert (=> b!449491 m!433665))

(declare-fun m!433667 () Bool)

(assert (=> b!449491 m!433667))

(declare-fun m!433669 () Bool)

(assert (=> mapNonEmpty!19674 m!433669))

(declare-fun m!433671 () Bool)

(assert (=> b!449484 m!433671))

(declare-fun m!433673 () Bool)

(assert (=> start!40686 m!433673))

(declare-fun m!433675 () Bool)

(assert (=> start!40686 m!433675))

(declare-fun m!433677 () Bool)

(assert (=> b!449480 m!433677))

(declare-fun m!433679 () Bool)

(assert (=> b!449483 m!433679))

(declare-fun m!433681 () Bool)

(assert (=> b!449483 m!433681))

(declare-fun m!433683 () Bool)

(assert (=> b!449483 m!433683))

(check-sat (not b!449491) (not b!449478) (not b!449483) (not start!40686) (not b!449477) (not b!449480) (not mapNonEmpty!19674) (not b!449486) b_and!18715 (not b!449485) (not b_next!10689) tp_is_empty!12027 (not b!449487))
(check-sat b_and!18715 (not b_next!10689))
