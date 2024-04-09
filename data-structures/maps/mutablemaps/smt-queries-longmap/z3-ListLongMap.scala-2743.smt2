; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40306 () Bool)

(assert start!40306)

(declare-fun b!442317 () Bool)

(declare-fun e!260330 () Bool)

(declare-fun tp_is_empty!11697 () Bool)

(assert (=> b!442317 (= e!260330 tp_is_empty!11697)))

(declare-fun b!442318 () Bool)

(declare-fun e!260329 () Bool)

(assert (=> b!442318 (= e!260329 tp_is_empty!11697)))

(declare-fun b!442319 () Bool)

(declare-fun res!262052 () Bool)

(declare-fun e!260332 () Bool)

(assert (=> b!442319 (=> (not res!262052) (not e!260332))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442319 (= res!262052 (validMask!0 mask!1025))))

(declare-fun b!442320 () Bool)

(declare-fun res!262054 () Bool)

(assert (=> b!442320 (=> (not res!262054) (not e!260332))))

(declare-datatypes ((array!27179 0))(
  ( (array!27180 (arr!13035 (Array (_ BitVec 32) (_ BitVec 64))) (size!13387 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27179)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27179 (_ BitVec 32)) Bool)

(assert (=> b!442320 (= res!262054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19170 () Bool)

(declare-fun mapRes!19170 () Bool)

(declare-fun tp!37152 () Bool)

(assert (=> mapNonEmpty!19170 (= mapRes!19170 (and tp!37152 e!260330))))

(declare-datatypes ((V!16701 0))(
  ( (V!16702 (val!5893 Int)) )
))
(declare-datatypes ((ValueCell!5505 0))(
  ( (ValueCellFull!5505 (v!8140 V!16701)) (EmptyCell!5505) )
))
(declare-fun mapValue!19170 () ValueCell!5505)

(declare-datatypes ((array!27181 0))(
  ( (array!27182 (arr!13036 (Array (_ BitVec 32) ValueCell!5505)) (size!13388 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27181)

(declare-fun mapRest!19170 () (Array (_ BitVec 32) ValueCell!5505))

(declare-fun mapKey!19170 () (_ BitVec 32))

(assert (=> mapNonEmpty!19170 (= (arr!13036 _values!549) (store mapRest!19170 mapKey!19170 mapValue!19170))))

(declare-fun b!442321 () Bool)

(assert (=> b!442321 (= e!260332 false)))

(declare-fun lt!203172 () Bool)

(declare-datatypes ((List!7805 0))(
  ( (Nil!7802) (Cons!7801 (h!8657 (_ BitVec 64)) (t!13571 List!7805)) )
))
(declare-fun arrayNoDuplicates!0 (array!27179 (_ BitVec 32) List!7805) Bool)

(assert (=> b!442321 (= lt!203172 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7802))))

(declare-fun b!442322 () Bool)

(declare-fun res!262053 () Bool)

(assert (=> b!442322 (=> (not res!262053) (not e!260332))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442322 (= res!262053 (and (= (size!13388 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13387 _keys!709) (size!13388 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442323 () Bool)

(declare-fun e!260331 () Bool)

(assert (=> b!442323 (= e!260331 (and e!260329 mapRes!19170))))

(declare-fun condMapEmpty!19170 () Bool)

(declare-fun mapDefault!19170 () ValueCell!5505)

(assert (=> b!442323 (= condMapEmpty!19170 (= (arr!13036 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5505)) mapDefault!19170)))))

(declare-fun res!262055 () Bool)

(assert (=> start!40306 (=> (not res!262055) (not e!260332))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40306 (= res!262055 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13387 _keys!709))))))

(assert (=> start!40306 e!260332))

(assert (=> start!40306 true))

(declare-fun array_inv!9450 (array!27181) Bool)

(assert (=> start!40306 (and (array_inv!9450 _values!549) e!260331)))

(declare-fun array_inv!9451 (array!27179) Bool)

(assert (=> start!40306 (array_inv!9451 _keys!709)))

(declare-fun mapIsEmpty!19170 () Bool)

(assert (=> mapIsEmpty!19170 mapRes!19170))

(assert (= (and start!40306 res!262055) b!442319))

(assert (= (and b!442319 res!262052) b!442322))

(assert (= (and b!442322 res!262053) b!442320))

(assert (= (and b!442320 res!262054) b!442321))

(assert (= (and b!442323 condMapEmpty!19170) mapIsEmpty!19170))

(assert (= (and b!442323 (not condMapEmpty!19170)) mapNonEmpty!19170))

(get-info :version)

(assert (= (and mapNonEmpty!19170 ((_ is ValueCellFull!5505) mapValue!19170)) b!442317))

(assert (= (and b!442323 ((_ is ValueCellFull!5505) mapDefault!19170)) b!442318))

(assert (= start!40306 b!442323))

(declare-fun m!428993 () Bool)

(assert (=> mapNonEmpty!19170 m!428993))

(declare-fun m!428995 () Bool)

(assert (=> start!40306 m!428995))

(declare-fun m!428997 () Bool)

(assert (=> start!40306 m!428997))

(declare-fun m!428999 () Bool)

(assert (=> b!442321 m!428999))

(declare-fun m!429001 () Bool)

(assert (=> b!442320 m!429001))

(declare-fun m!429003 () Bool)

(assert (=> b!442319 m!429003))

(check-sat (not mapNonEmpty!19170) tp_is_empty!11697 (not b!442319) (not b!442321) (not start!40306) (not b!442320))
(check-sat)
