; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40318 () Bool)

(assert start!40318)

(declare-fun res!262125 () Bool)

(declare-fun e!260420 () Bool)

(assert (=> start!40318 (=> (not res!262125) (not e!260420))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27201 0))(
  ( (array!27202 (arr!13046 (Array (_ BitVec 32) (_ BitVec 64))) (size!13398 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27201)

(assert (=> start!40318 (= res!262125 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13398 _keys!709))))))

(assert (=> start!40318 e!260420))

(assert (=> start!40318 true))

(declare-datatypes ((V!16717 0))(
  ( (V!16718 (val!5899 Int)) )
))
(declare-datatypes ((ValueCell!5511 0))(
  ( (ValueCellFull!5511 (v!8146 V!16717)) (EmptyCell!5511) )
))
(declare-datatypes ((array!27203 0))(
  ( (array!27204 (arr!13047 (Array (_ BitVec 32) ValueCell!5511)) (size!13399 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27203)

(declare-fun e!260422 () Bool)

(declare-fun array_inv!9460 (array!27203) Bool)

(assert (=> start!40318 (and (array_inv!9460 _values!549) e!260422)))

(declare-fun array_inv!9461 (array!27201) Bool)

(assert (=> start!40318 (array_inv!9461 _keys!709)))

(declare-fun b!442443 () Bool)

(declare-fun res!262124 () Bool)

(assert (=> b!442443 (=> (not res!262124) (not e!260420))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442443 (= res!262124 (and (= (size!13399 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13398 _keys!709) (size!13399 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442444 () Bool)

(declare-fun e!260423 () Bool)

(declare-fun mapRes!19188 () Bool)

(assert (=> b!442444 (= e!260422 (and e!260423 mapRes!19188))))

(declare-fun condMapEmpty!19188 () Bool)

(declare-fun mapDefault!19188 () ValueCell!5511)

(assert (=> b!442444 (= condMapEmpty!19188 (= (arr!13047 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5511)) mapDefault!19188)))))

(declare-fun b!442445 () Bool)

(declare-fun res!262126 () Bool)

(assert (=> b!442445 (=> (not res!262126) (not e!260420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27201 (_ BitVec 32)) Bool)

(assert (=> b!442445 (= res!262126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442446 () Bool)

(assert (=> b!442446 (= e!260420 false)))

(declare-fun lt!203190 () Bool)

(declare-datatypes ((List!7809 0))(
  ( (Nil!7806) (Cons!7805 (h!8661 (_ BitVec 64)) (t!13575 List!7809)) )
))
(declare-fun arrayNoDuplicates!0 (array!27201 (_ BitVec 32) List!7809) Bool)

(assert (=> b!442446 (= lt!203190 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7806))))

(declare-fun mapNonEmpty!19188 () Bool)

(declare-fun tp!37170 () Bool)

(declare-fun e!260421 () Bool)

(assert (=> mapNonEmpty!19188 (= mapRes!19188 (and tp!37170 e!260421))))

(declare-fun mapKey!19188 () (_ BitVec 32))

(declare-fun mapValue!19188 () ValueCell!5511)

(declare-fun mapRest!19188 () (Array (_ BitVec 32) ValueCell!5511))

(assert (=> mapNonEmpty!19188 (= (arr!13047 _values!549) (store mapRest!19188 mapKey!19188 mapValue!19188))))

(declare-fun b!442447 () Bool)

(declare-fun tp_is_empty!11709 () Bool)

(assert (=> b!442447 (= e!260421 tp_is_empty!11709)))

(declare-fun mapIsEmpty!19188 () Bool)

(assert (=> mapIsEmpty!19188 mapRes!19188))

(declare-fun b!442448 () Bool)

(assert (=> b!442448 (= e!260423 tp_is_empty!11709)))

(declare-fun b!442449 () Bool)

(declare-fun res!262127 () Bool)

(assert (=> b!442449 (=> (not res!262127) (not e!260420))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442449 (= res!262127 (validMask!0 mask!1025))))

(assert (= (and start!40318 res!262125) b!442449))

(assert (= (and b!442449 res!262127) b!442443))

(assert (= (and b!442443 res!262124) b!442445))

(assert (= (and b!442445 res!262126) b!442446))

(assert (= (and b!442444 condMapEmpty!19188) mapIsEmpty!19188))

(assert (= (and b!442444 (not condMapEmpty!19188)) mapNonEmpty!19188))

(get-info :version)

(assert (= (and mapNonEmpty!19188 ((_ is ValueCellFull!5511) mapValue!19188)) b!442447))

(assert (= (and b!442444 ((_ is ValueCellFull!5511) mapDefault!19188)) b!442448))

(assert (= start!40318 b!442444))

(declare-fun m!429065 () Bool)

(assert (=> b!442445 m!429065))

(declare-fun m!429067 () Bool)

(assert (=> b!442446 m!429067))

(declare-fun m!429069 () Bool)

(assert (=> b!442449 m!429069))

(declare-fun m!429071 () Bool)

(assert (=> start!40318 m!429071))

(declare-fun m!429073 () Bool)

(assert (=> start!40318 m!429073))

(declare-fun m!429075 () Bool)

(assert (=> mapNonEmpty!19188 m!429075))

(check-sat tp_is_empty!11709 (not b!442446) (not start!40318) (not mapNonEmpty!19188) (not b!442449) (not b!442445))
(check-sat)
