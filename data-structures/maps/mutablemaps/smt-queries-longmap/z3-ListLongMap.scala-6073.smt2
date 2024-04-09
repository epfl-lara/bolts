; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78576 () Bool)

(assert start!78576)

(declare-fun mapNonEmpty!30660 () Bool)

(declare-fun mapRes!30660 () Bool)

(declare-fun tp!58728 () Bool)

(declare-fun e!513876 () Bool)

(assert (=> mapNonEmpty!30660 (= mapRes!30660 (and tp!58728 e!513876))))

(declare-datatypes ((V!30657 0))(
  ( (V!30658 (val!9685 Int)) )
))
(declare-datatypes ((ValueCell!9153 0))(
  ( (ValueCellFull!9153 (v!12203 V!30657)) (EmptyCell!9153) )
))
(declare-fun mapValue!30660 () ValueCell!9153)

(declare-fun mapKey!30660 () (_ BitVec 32))

(declare-datatypes ((array!54542 0))(
  ( (array!54543 (arr!26212 (Array (_ BitVec 32) ValueCell!9153)) (size!26672 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54542)

(declare-fun mapRest!30660 () (Array (_ BitVec 32) ValueCell!9153))

(assert (=> mapNonEmpty!30660 (= (arr!26212 _values!1231) (store mapRest!30660 mapKey!30660 mapValue!30660))))

(declare-fun b!915479 () Bool)

(declare-fun res!617321 () Bool)

(declare-fun e!513875 () Bool)

(assert (=> b!915479 (=> (not res!617321) (not e!513875))))

(declare-datatypes ((array!54544 0))(
  ( (array!54545 (arr!26213 (Array (_ BitVec 32) (_ BitVec 64))) (size!26673 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54544)

(declare-datatypes ((List!18489 0))(
  ( (Nil!18486) (Cons!18485 (h!19631 (_ BitVec 64)) (t!26110 List!18489)) )
))
(declare-fun arrayNoDuplicates!0 (array!54544 (_ BitVec 32) List!18489) Bool)

(assert (=> b!915479 (= res!617321 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18486))))

(declare-fun mapIsEmpty!30660 () Bool)

(assert (=> mapIsEmpty!30660 mapRes!30660))

(declare-fun b!915480 () Bool)

(declare-fun tp_is_empty!19269 () Bool)

(assert (=> b!915480 (= e!513876 tp_is_empty!19269)))

(declare-fun b!915481 () Bool)

(declare-fun e!513878 () Bool)

(assert (=> b!915481 (= e!513878 tp_is_empty!19269)))

(declare-fun b!915482 () Bool)

(declare-fun res!617318 () Bool)

(assert (=> b!915482 (=> (not res!617318) (not e!513875))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54544 (_ BitVec 32)) Bool)

(assert (=> b!915482 (= res!617318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915483 () Bool)

(declare-fun res!617320 () Bool)

(assert (=> b!915483 (=> (not res!617320) (not e!513875))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915483 (= res!617320 (and (= (size!26672 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26673 _keys!1487) (size!26672 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!617319 () Bool)

(assert (=> start!78576 (=> (not res!617319) (not e!513875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78576 (= res!617319 (validMask!0 mask!1881))))

(assert (=> start!78576 e!513875))

(declare-fun array_inv!20446 (array!54544) Bool)

(assert (=> start!78576 (array_inv!20446 _keys!1487)))

(assert (=> start!78576 true))

(declare-fun e!513879 () Bool)

(declare-fun array_inv!20447 (array!54542) Bool)

(assert (=> start!78576 (and (array_inv!20447 _values!1231) e!513879)))

(declare-fun b!915484 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915484 (= e!513875 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26673 _keys!1487)) (bvsgt from!1844 (size!26673 _keys!1487))))))

(declare-fun b!915485 () Bool)

(assert (=> b!915485 (= e!513879 (and e!513878 mapRes!30660))))

(declare-fun condMapEmpty!30660 () Bool)

(declare-fun mapDefault!30660 () ValueCell!9153)

(assert (=> b!915485 (= condMapEmpty!30660 (= (arr!26212 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9153)) mapDefault!30660)))))

(assert (= (and start!78576 res!617319) b!915483))

(assert (= (and b!915483 res!617320) b!915482))

(assert (= (and b!915482 res!617318) b!915479))

(assert (= (and b!915479 res!617321) b!915484))

(assert (= (and b!915485 condMapEmpty!30660) mapIsEmpty!30660))

(assert (= (and b!915485 (not condMapEmpty!30660)) mapNonEmpty!30660))

(get-info :version)

(assert (= (and mapNonEmpty!30660 ((_ is ValueCellFull!9153) mapValue!30660)) b!915480))

(assert (= (and b!915485 ((_ is ValueCellFull!9153) mapDefault!30660)) b!915481))

(assert (= start!78576 b!915485))

(declare-fun m!849895 () Bool)

(assert (=> mapNonEmpty!30660 m!849895))

(declare-fun m!849897 () Bool)

(assert (=> b!915479 m!849897))

(declare-fun m!849899 () Bool)

(assert (=> b!915482 m!849899))

(declare-fun m!849901 () Bool)

(assert (=> start!78576 m!849901))

(declare-fun m!849903 () Bool)

(assert (=> start!78576 m!849903))

(declare-fun m!849905 () Bool)

(assert (=> start!78576 m!849905))

(check-sat (not mapNonEmpty!30660) (not b!915482) (not b!915479) tp_is_empty!19269 (not start!78576))
(check-sat)
