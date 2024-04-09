; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100402 () Bool)

(assert start!100402)

(declare-fun b!1197814 () Bool)

(declare-fun res!797258 () Bool)

(declare-fun e!680478 () Bool)

(assert (=> b!1197814 (=> (not res!797258) (not e!680478))))

(declare-datatypes ((array!77582 0))(
  ( (array!77583 (arr!37433 (Array (_ BitVec 32) (_ BitVec 64))) (size!37970 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77582)

(declare-datatypes ((List!26496 0))(
  ( (Nil!26493) (Cons!26492 (h!27701 (_ BitVec 64)) (t!39204 List!26496)) )
))
(declare-fun arrayNoDuplicates!0 (array!77582 (_ BitVec 32) List!26496) Bool)

(assert (=> b!1197814 (= res!797258 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26493))))

(declare-fun b!1197815 () Bool)

(declare-fun res!797257 () Bool)

(assert (=> b!1197815 (=> (not res!797257) (not e!680478))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197815 (= res!797257 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37970 _keys!1208))))))

(declare-fun b!1197816 () Bool)

(declare-fun e!680475 () Bool)

(declare-fun e!680476 () Bool)

(declare-fun mapRes!47456 () Bool)

(assert (=> b!1197816 (= e!680475 (and e!680476 mapRes!47456))))

(declare-fun condMapEmpty!47456 () Bool)

(declare-datatypes ((V!45675 0))(
  ( (V!45676 (val!15262 Int)) )
))
(declare-datatypes ((ValueCell!14496 0))(
  ( (ValueCellFull!14496 (v!17901 V!45675)) (EmptyCell!14496) )
))
(declare-datatypes ((array!77584 0))(
  ( (array!77585 (arr!37434 (Array (_ BitVec 32) ValueCell!14496)) (size!37971 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77584)

(declare-fun mapDefault!47456 () ValueCell!14496)

(assert (=> b!1197816 (= condMapEmpty!47456 (= (arr!37434 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14496)) mapDefault!47456)))))

(declare-fun mapIsEmpty!47456 () Bool)

(assert (=> mapIsEmpty!47456 mapRes!47456))

(declare-fun mapNonEmpty!47456 () Bool)

(declare-fun tp!90112 () Bool)

(declare-fun e!680480 () Bool)

(assert (=> mapNonEmpty!47456 (= mapRes!47456 (and tp!90112 e!680480))))

(declare-fun mapRest!47456 () (Array (_ BitVec 32) ValueCell!14496))

(declare-fun mapValue!47456 () ValueCell!14496)

(declare-fun mapKey!47456 () (_ BitVec 32))

(assert (=> mapNonEmpty!47456 (= (arr!37434 _values!996) (store mapRest!47456 mapKey!47456 mapValue!47456))))

(declare-fun b!1197817 () Bool)

(declare-fun e!680479 () Bool)

(assert (=> b!1197817 (= e!680478 e!680479)))

(declare-fun res!797256 () Bool)

(assert (=> b!1197817 (=> (not res!797256) (not e!680479))))

(declare-fun lt!543311 () array!77582)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77582 (_ BitVec 32)) Bool)

(assert (=> b!1197817 (= res!797256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543311 mask!1564))))

(assert (=> b!1197817 (= lt!543311 (array!77583 (store (arr!37433 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37970 _keys!1208)))))

(declare-fun res!797251 () Bool)

(assert (=> start!100402 (=> (not res!797251) (not e!680478))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100402 (= res!797251 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37970 _keys!1208))))))

(assert (=> start!100402 e!680478))

(declare-fun array_inv!28432 (array!77582) Bool)

(assert (=> start!100402 (array_inv!28432 _keys!1208)))

(assert (=> start!100402 true))

(declare-fun array_inv!28433 (array!77584) Bool)

(assert (=> start!100402 (and (array_inv!28433 _values!996) e!680475)))

(declare-fun b!1197818 () Bool)

(declare-fun res!797254 () Bool)

(assert (=> b!1197818 (=> (not res!797254) (not e!680478))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1197818 (= res!797254 (= (select (arr!37433 _keys!1208) i!673) k0!934))))

(declare-fun b!1197819 () Bool)

(declare-fun res!797252 () Bool)

(assert (=> b!1197819 (=> (not res!797252) (not e!680478))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197819 (= res!797252 (and (= (size!37971 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37970 _keys!1208) (size!37971 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197820 () Bool)

(assert (=> b!1197820 (= e!680479 (not (or (bvsle from!1455 i!673) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37970 _keys!1208)) (bvslt i!673 (size!37971 _values!996)))))))

(declare-fun arrayContainsKey!0 (array!77582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197820 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39652 0))(
  ( (Unit!39653) )
))
(declare-fun lt!543312 () Unit!39652)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77582 (_ BitVec 64) (_ BitVec 32)) Unit!39652)

(assert (=> b!1197820 (= lt!543312 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1197821 () Bool)

(declare-fun res!797255 () Bool)

(assert (=> b!1197821 (=> (not res!797255) (not e!680478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197821 (= res!797255 (validKeyInArray!0 k0!934))))

(declare-fun b!1197822 () Bool)

(declare-fun res!797253 () Bool)

(assert (=> b!1197822 (=> (not res!797253) (not e!680478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197822 (= res!797253 (validMask!0 mask!1564))))

(declare-fun b!1197823 () Bool)

(declare-fun tp_is_empty!30411 () Bool)

(assert (=> b!1197823 (= e!680480 tp_is_empty!30411)))

(declare-fun b!1197824 () Bool)

(declare-fun res!797250 () Bool)

(assert (=> b!1197824 (=> (not res!797250) (not e!680479))))

(assert (=> b!1197824 (= res!797250 (arrayNoDuplicates!0 lt!543311 #b00000000000000000000000000000000 Nil!26493))))

(declare-fun b!1197825 () Bool)

(declare-fun res!797259 () Bool)

(assert (=> b!1197825 (=> (not res!797259) (not e!680478))))

(assert (=> b!1197825 (= res!797259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197826 () Bool)

(assert (=> b!1197826 (= e!680476 tp_is_empty!30411)))

(assert (= (and start!100402 res!797251) b!1197822))

(assert (= (and b!1197822 res!797253) b!1197819))

(assert (= (and b!1197819 res!797252) b!1197825))

(assert (= (and b!1197825 res!797259) b!1197814))

(assert (= (and b!1197814 res!797258) b!1197815))

(assert (= (and b!1197815 res!797257) b!1197821))

(assert (= (and b!1197821 res!797255) b!1197818))

(assert (= (and b!1197818 res!797254) b!1197817))

(assert (= (and b!1197817 res!797256) b!1197824))

(assert (= (and b!1197824 res!797250) b!1197820))

(assert (= (and b!1197816 condMapEmpty!47456) mapIsEmpty!47456))

(assert (= (and b!1197816 (not condMapEmpty!47456)) mapNonEmpty!47456))

(get-info :version)

(assert (= (and mapNonEmpty!47456 ((_ is ValueCellFull!14496) mapValue!47456)) b!1197823))

(assert (= (and b!1197816 ((_ is ValueCellFull!14496) mapDefault!47456)) b!1197826))

(assert (= start!100402 b!1197816))

(declare-fun m!1104779 () Bool)

(assert (=> b!1197824 m!1104779))

(declare-fun m!1104781 () Bool)

(assert (=> b!1197818 m!1104781))

(declare-fun m!1104783 () Bool)

(assert (=> b!1197822 m!1104783))

(declare-fun m!1104785 () Bool)

(assert (=> b!1197821 m!1104785))

(declare-fun m!1104787 () Bool)

(assert (=> b!1197817 m!1104787))

(declare-fun m!1104789 () Bool)

(assert (=> b!1197817 m!1104789))

(declare-fun m!1104791 () Bool)

(assert (=> b!1197820 m!1104791))

(declare-fun m!1104793 () Bool)

(assert (=> b!1197820 m!1104793))

(declare-fun m!1104795 () Bool)

(assert (=> mapNonEmpty!47456 m!1104795))

(declare-fun m!1104797 () Bool)

(assert (=> b!1197825 m!1104797))

(declare-fun m!1104799 () Bool)

(assert (=> start!100402 m!1104799))

(declare-fun m!1104801 () Bool)

(assert (=> start!100402 m!1104801))

(declare-fun m!1104803 () Bool)

(assert (=> b!1197814 m!1104803))

(check-sat (not b!1197820) (not b!1197814) (not mapNonEmpty!47456) tp_is_empty!30411 (not b!1197825) (not b!1197817) (not b!1197822) (not b!1197824) (not b!1197821) (not start!100402))
(check-sat)
