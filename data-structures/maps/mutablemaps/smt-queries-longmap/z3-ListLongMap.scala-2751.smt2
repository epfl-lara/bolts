; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40368 () Bool)

(assert start!40368)

(declare-fun b!443172 () Bool)

(declare-fun res!262670 () Bool)

(declare-fun e!260775 () Bool)

(assert (=> b!443172 (=> (not res!262670) (not e!260775))))

(declare-datatypes ((array!27271 0))(
  ( (array!27272 (arr!13080 (Array (_ BitVec 32) (_ BitVec 64))) (size!13432 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27271)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27271 (_ BitVec 32)) Bool)

(assert (=> b!443172 (= res!262670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443173 () Bool)

(declare-fun e!260774 () Bool)

(declare-fun tp_is_empty!11745 () Bool)

(assert (=> b!443173 (= e!260774 tp_is_empty!11745)))

(declare-fun mapIsEmpty!19245 () Bool)

(declare-fun mapRes!19245 () Bool)

(assert (=> mapIsEmpty!19245 mapRes!19245))

(declare-fun b!443174 () Bool)

(declare-fun res!262667 () Bool)

(assert (=> b!443174 (=> (not res!262667) (not e!260775))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443174 (= res!262667 (validKeyInArray!0 k0!794))))

(declare-fun b!443175 () Bool)

(declare-fun e!260772 () Bool)

(assert (=> b!443175 (= e!260772 false)))

(declare-fun lt!203289 () Bool)

(declare-fun lt!203288 () array!27271)

(declare-datatypes ((List!7820 0))(
  ( (Nil!7817) (Cons!7816 (h!8672 (_ BitVec 64)) (t!13586 List!7820)) )
))
(declare-fun arrayNoDuplicates!0 (array!27271 (_ BitVec 32) List!7820) Bool)

(assert (=> b!443175 (= lt!203289 (arrayNoDuplicates!0 lt!203288 #b00000000000000000000000000000000 Nil!7817))))

(declare-fun mapNonEmpty!19245 () Bool)

(declare-fun tp!37227 () Bool)

(assert (=> mapNonEmpty!19245 (= mapRes!19245 (and tp!37227 e!260774))))

(declare-fun mapKey!19245 () (_ BitVec 32))

(declare-datatypes ((V!16765 0))(
  ( (V!16766 (val!5917 Int)) )
))
(declare-datatypes ((ValueCell!5529 0))(
  ( (ValueCellFull!5529 (v!8164 V!16765)) (EmptyCell!5529) )
))
(declare-datatypes ((array!27273 0))(
  ( (array!27274 (arr!13081 (Array (_ BitVec 32) ValueCell!5529)) (size!13433 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27273)

(declare-fun mapRest!19245 () (Array (_ BitVec 32) ValueCell!5529))

(declare-fun mapValue!19245 () ValueCell!5529)

(assert (=> mapNonEmpty!19245 (= (arr!13081 _values!549) (store mapRest!19245 mapKey!19245 mapValue!19245))))

(declare-fun b!443176 () Bool)

(assert (=> b!443176 (= e!260775 e!260772)))

(declare-fun res!262671 () Bool)

(assert (=> b!443176 (=> (not res!262671) (not e!260772))))

(assert (=> b!443176 (= res!262671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203288 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443176 (= lt!203288 (array!27272 (store (arr!13080 _keys!709) i!563 k0!794) (size!13432 _keys!709)))))

(declare-fun b!443177 () Bool)

(declare-fun res!262666 () Bool)

(assert (=> b!443177 (=> (not res!262666) (not e!260775))))

(assert (=> b!443177 (= res!262666 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7817))))

(declare-fun b!443171 () Bool)

(declare-fun res!262674 () Bool)

(assert (=> b!443171 (=> (not res!262674) (not e!260775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443171 (= res!262674 (validMask!0 mask!1025))))

(declare-fun res!262668 () Bool)

(assert (=> start!40368 (=> (not res!262668) (not e!260775))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40368 (= res!262668 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13432 _keys!709))))))

(assert (=> start!40368 e!260775))

(assert (=> start!40368 true))

(declare-fun e!260771 () Bool)

(declare-fun array_inv!9482 (array!27273) Bool)

(assert (=> start!40368 (and (array_inv!9482 _values!549) e!260771)))

(declare-fun array_inv!9483 (array!27271) Bool)

(assert (=> start!40368 (array_inv!9483 _keys!709)))

(declare-fun b!443178 () Bool)

(declare-fun res!262673 () Bool)

(assert (=> b!443178 (=> (not res!262673) (not e!260775))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443178 (= res!262673 (and (= (size!13433 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13432 _keys!709) (size!13433 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443179 () Bool)

(declare-fun res!262675 () Bool)

(assert (=> b!443179 (=> (not res!262675) (not e!260775))))

(assert (=> b!443179 (= res!262675 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13432 _keys!709))))))

(declare-fun b!443180 () Bool)

(declare-fun res!262672 () Bool)

(assert (=> b!443180 (=> (not res!262672) (not e!260775))))

(assert (=> b!443180 (= res!262672 (or (= (select (arr!13080 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13080 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443181 () Bool)

(declare-fun e!260770 () Bool)

(assert (=> b!443181 (= e!260771 (and e!260770 mapRes!19245))))

(declare-fun condMapEmpty!19245 () Bool)

(declare-fun mapDefault!19245 () ValueCell!5529)

(assert (=> b!443181 (= condMapEmpty!19245 (= (arr!13081 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5529)) mapDefault!19245)))))

(declare-fun b!443182 () Bool)

(assert (=> b!443182 (= e!260770 tp_is_empty!11745)))

(declare-fun b!443183 () Bool)

(declare-fun res!262669 () Bool)

(assert (=> b!443183 (=> (not res!262669) (not e!260775))))

(declare-fun arrayContainsKey!0 (array!27271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443183 (= res!262669 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40368 res!262668) b!443171))

(assert (= (and b!443171 res!262674) b!443178))

(assert (= (and b!443178 res!262673) b!443172))

(assert (= (and b!443172 res!262670) b!443177))

(assert (= (and b!443177 res!262666) b!443179))

(assert (= (and b!443179 res!262675) b!443174))

(assert (= (and b!443174 res!262667) b!443180))

(assert (= (and b!443180 res!262672) b!443183))

(assert (= (and b!443183 res!262669) b!443176))

(assert (= (and b!443176 res!262671) b!443175))

(assert (= (and b!443181 condMapEmpty!19245) mapIsEmpty!19245))

(assert (= (and b!443181 (not condMapEmpty!19245)) mapNonEmpty!19245))

(get-info :version)

(assert (= (and mapNonEmpty!19245 ((_ is ValueCellFull!5529) mapValue!19245)) b!443173))

(assert (= (and b!443181 ((_ is ValueCellFull!5529) mapDefault!19245)) b!443182))

(assert (= start!40368 b!443181))

(declare-fun m!429503 () Bool)

(assert (=> mapNonEmpty!19245 m!429503))

(declare-fun m!429505 () Bool)

(assert (=> b!443174 m!429505))

(declare-fun m!429507 () Bool)

(assert (=> b!443177 m!429507))

(declare-fun m!429509 () Bool)

(assert (=> b!443180 m!429509))

(declare-fun m!429511 () Bool)

(assert (=> b!443183 m!429511))

(declare-fun m!429513 () Bool)

(assert (=> start!40368 m!429513))

(declare-fun m!429515 () Bool)

(assert (=> start!40368 m!429515))

(declare-fun m!429517 () Bool)

(assert (=> b!443172 m!429517))

(declare-fun m!429519 () Bool)

(assert (=> b!443176 m!429519))

(declare-fun m!429521 () Bool)

(assert (=> b!443176 m!429521))

(declare-fun m!429523 () Bool)

(assert (=> b!443171 m!429523))

(declare-fun m!429525 () Bool)

(assert (=> b!443175 m!429525))

(check-sat (not start!40368) (not b!443183) (not mapNonEmpty!19245) (not b!443175) (not b!443171) (not b!443176) (not b!443174) (not b!443177) tp_is_empty!11745 (not b!443172))
(check-sat)
