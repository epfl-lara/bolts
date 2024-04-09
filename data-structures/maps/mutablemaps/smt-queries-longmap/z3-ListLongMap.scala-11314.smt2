; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131822 () Bool)

(assert start!131822)

(declare-fun b!1542938 () Bool)

(declare-fun res!1058818 () Bool)

(declare-fun e!858605 () Bool)

(assert (=> b!1542938 (=> (not res!1058818) (not e!858605))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58815 0))(
  ( (V!58816 (val!18967 Int)) )
))
(declare-datatypes ((ValueCell!17979 0))(
  ( (ValueCellFull!17979 (v!21765 V!58815)) (EmptyCell!17979) )
))
(declare-datatypes ((array!102745 0))(
  ( (array!102746 (arr!49570 (Array (_ BitVec 32) ValueCell!17979)) (size!50121 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102745)

(declare-datatypes ((array!102747 0))(
  ( (array!102748 (arr!49571 (Array (_ BitVec 32) (_ BitVec 64))) (size!50122 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102747)

(assert (=> b!1542938 (= res!1058818 (and (= (size!50121 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50122 _keys!618) (size!50121 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058817 () Bool)

(assert (=> start!131822 (=> (not res!1058817) (not e!858605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131822 (= res!1058817 (validMask!0 mask!926))))

(assert (=> start!131822 e!858605))

(assert (=> start!131822 true))

(declare-fun e!858607 () Bool)

(declare-fun array_inv!38489 (array!102745) Bool)

(assert (=> start!131822 (and (array_inv!38489 _values!470) e!858607)))

(declare-fun array_inv!38490 (array!102747) Bool)

(assert (=> start!131822 (array_inv!38490 _keys!618)))

(declare-fun mapIsEmpty!58372 () Bool)

(declare-fun mapRes!58372 () Bool)

(assert (=> mapIsEmpty!58372 mapRes!58372))

(declare-fun b!1542939 () Bool)

(declare-fun e!858606 () Bool)

(declare-fun tp_is_empty!37779 () Bool)

(assert (=> b!1542939 (= e!858606 tp_is_empty!37779)))

(declare-fun b!1542940 () Bool)

(declare-fun res!1058819 () Bool)

(assert (=> b!1542940 (=> (not res!1058819) (not e!858605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102747 (_ BitVec 32)) Bool)

(assert (=> b!1542940 (= res!1058819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542941 () Bool)

(assert (=> b!1542941 (= e!858605 false)))

(declare-fun lt!665843 () Bool)

(declare-datatypes ((List!36053 0))(
  ( (Nil!36050) (Cons!36049 (h!37495 (_ BitVec 64)) (t!50754 List!36053)) )
))
(declare-fun arrayNoDuplicates!0 (array!102747 (_ BitVec 32) List!36053) Bool)

(assert (=> b!1542941 (= lt!665843 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36050))))

(declare-fun b!1542942 () Bool)

(declare-fun e!858603 () Bool)

(assert (=> b!1542942 (= e!858603 tp_is_empty!37779)))

(declare-fun b!1542943 () Bool)

(assert (=> b!1542943 (= e!858607 (and e!858603 mapRes!58372))))

(declare-fun condMapEmpty!58372 () Bool)

(declare-fun mapDefault!58372 () ValueCell!17979)

(assert (=> b!1542943 (= condMapEmpty!58372 (= (arr!49570 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17979)) mapDefault!58372)))))

(declare-fun mapNonEmpty!58372 () Bool)

(declare-fun tp!110900 () Bool)

(assert (=> mapNonEmpty!58372 (= mapRes!58372 (and tp!110900 e!858606))))

(declare-fun mapValue!58372 () ValueCell!17979)

(declare-fun mapRest!58372 () (Array (_ BitVec 32) ValueCell!17979))

(declare-fun mapKey!58372 () (_ BitVec 32))

(assert (=> mapNonEmpty!58372 (= (arr!49570 _values!470) (store mapRest!58372 mapKey!58372 mapValue!58372))))

(assert (= (and start!131822 res!1058817) b!1542938))

(assert (= (and b!1542938 res!1058818) b!1542940))

(assert (= (and b!1542940 res!1058819) b!1542941))

(assert (= (and b!1542943 condMapEmpty!58372) mapIsEmpty!58372))

(assert (= (and b!1542943 (not condMapEmpty!58372)) mapNonEmpty!58372))

(get-info :version)

(assert (= (and mapNonEmpty!58372 ((_ is ValueCellFull!17979) mapValue!58372)) b!1542939))

(assert (= (and b!1542943 ((_ is ValueCellFull!17979) mapDefault!58372)) b!1542942))

(assert (= start!131822 b!1542943))

(declare-fun m!1424419 () Bool)

(assert (=> start!131822 m!1424419))

(declare-fun m!1424421 () Bool)

(assert (=> start!131822 m!1424421))

(declare-fun m!1424423 () Bool)

(assert (=> start!131822 m!1424423))

(declare-fun m!1424425 () Bool)

(assert (=> b!1542940 m!1424425))

(declare-fun m!1424427 () Bool)

(assert (=> b!1542941 m!1424427))

(declare-fun m!1424429 () Bool)

(assert (=> mapNonEmpty!58372 m!1424429))

(check-sat tp_is_empty!37779 (not mapNonEmpty!58372) (not b!1542940) (not start!131822) (not b!1542941))
(check-sat)
