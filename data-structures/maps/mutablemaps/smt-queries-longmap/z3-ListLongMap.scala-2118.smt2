; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35902 () Bool)

(assert start!35902)

(declare-fun b!360650 () Bool)

(declare-fun e!220784 () Bool)

(declare-fun tp_is_empty!8331 () Bool)

(assert (=> b!360650 (= e!220784 tp_is_empty!8331)))

(declare-fun b!360651 () Bool)

(declare-fun res!200704 () Bool)

(declare-fun e!220786 () Bool)

(assert (=> b!360651 (=> (not res!200704) (not e!220786))))

(declare-datatypes ((array!20185 0))(
  ( (array!20186 (arr!9582 (Array (_ BitVec 32) (_ BitVec 64))) (size!9934 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20185)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20185 (_ BitVec 32)) Bool)

(assert (=> b!360651 (= res!200704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360652 () Bool)

(declare-fun res!200706 () Bool)

(assert (=> b!360652 (=> (not res!200706) (not e!220786))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360652 (= res!200706 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!360653 () Bool)

(declare-fun res!200707 () Bool)

(assert (=> b!360653 (=> (not res!200707) (not e!220786))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!12085 0))(
  ( (V!12086 (val!4210 Int)) )
))
(declare-datatypes ((ValueCell!3822 0))(
  ( (ValueCellFull!3822 (v!6400 V!12085)) (EmptyCell!3822) )
))
(declare-datatypes ((array!20187 0))(
  ( (array!20188 (arr!9583 (Array (_ BitVec 32) ValueCell!3822)) (size!9935 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20187)

(assert (=> b!360653 (= res!200707 (and (= (size!9935 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9934 _keys!1456) (size!9935 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360654 () Bool)

(assert (=> b!360654 (= e!220786 (not (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9934 _keys!1456)) (bvslt (bvsub (size!9934 _keys!1456) (bvadd #b00000000000000000000000000000001 from!1805)) (bvsub (size!9934 _keys!1456) from!1805)))))))

(assert (=> b!360654 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12085)

(declare-datatypes ((Unit!11089 0))(
  ( (Unit!11090) )
))
(declare-fun lt!166456 () Unit!11089)

(declare-fun zeroValue!1150 () V!12085)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!61 (array!20185 array!20187 (_ BitVec 32) (_ BitVec 32) V!12085 V!12085 (_ BitVec 64) (_ BitVec 32)) Unit!11089)

(assert (=> b!360654 (= lt!166456 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!61 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360655 () Bool)

(declare-fun e!220782 () Bool)

(declare-fun mapRes!14007 () Bool)

(assert (=> b!360655 (= e!220782 (and e!220784 mapRes!14007))))

(declare-fun condMapEmpty!14007 () Bool)

(declare-fun mapDefault!14007 () ValueCell!3822)

(assert (=> b!360655 (= condMapEmpty!14007 (= (arr!9583 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3822)) mapDefault!14007)))))

(declare-fun b!360656 () Bool)

(declare-fun res!200708 () Bool)

(assert (=> b!360656 (=> (not res!200708) (not e!220786))))

(declare-datatypes ((List!5522 0))(
  ( (Nil!5519) (Cons!5518 (h!6374 (_ BitVec 64)) (t!10680 List!5522)) )
))
(declare-fun arrayNoDuplicates!0 (array!20185 (_ BitVec 32) List!5522) Bool)

(assert (=> b!360656 (= res!200708 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5519))))

(declare-fun b!360657 () Bool)

(declare-fun res!200705 () Bool)

(assert (=> b!360657 (=> (not res!200705) (not e!220786))))

(assert (=> b!360657 (= res!200705 (not (= (select (arr!9582 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!360658 () Bool)

(declare-fun e!220785 () Bool)

(assert (=> b!360658 (= e!220785 tp_is_empty!8331)))

(declare-fun b!360659 () Bool)

(declare-fun res!200709 () Bool)

(assert (=> b!360659 (=> (not res!200709) (not e!220786))))

(assert (=> b!360659 (= res!200709 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9934 _keys!1456))))))

(declare-fun mapIsEmpty!14007 () Bool)

(assert (=> mapIsEmpty!14007 mapRes!14007))

(declare-fun mapNonEmpty!14007 () Bool)

(declare-fun tp!28074 () Bool)

(assert (=> mapNonEmpty!14007 (= mapRes!14007 (and tp!28074 e!220785))))

(declare-fun mapRest!14007 () (Array (_ BitVec 32) ValueCell!3822))

(declare-fun mapKey!14007 () (_ BitVec 32))

(declare-fun mapValue!14007 () ValueCell!3822)

(assert (=> mapNonEmpty!14007 (= (arr!9583 _values!1208) (store mapRest!14007 mapKey!14007 mapValue!14007))))

(declare-fun b!360660 () Bool)

(declare-fun res!200703 () Bool)

(assert (=> b!360660 (=> (not res!200703) (not e!220786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360660 (= res!200703 (validKeyInArray!0 k0!1077))))

(declare-fun res!200702 () Bool)

(assert (=> start!35902 (=> (not res!200702) (not e!220786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35902 (= res!200702 (validMask!0 mask!1842))))

(assert (=> start!35902 e!220786))

(assert (=> start!35902 tp_is_empty!8331))

(assert (=> start!35902 true))

(declare-fun array_inv!7046 (array!20185) Bool)

(assert (=> start!35902 (array_inv!7046 _keys!1456)))

(declare-fun array_inv!7047 (array!20187) Bool)

(assert (=> start!35902 (and (array_inv!7047 _values!1208) e!220782)))

(assert (= (and start!35902 res!200702) b!360653))

(assert (= (and b!360653 res!200707) b!360651))

(assert (= (and b!360651 res!200704) b!360656))

(assert (= (and b!360656 res!200708) b!360660))

(assert (= (and b!360660 res!200703) b!360659))

(assert (= (and b!360659 res!200709) b!360652))

(assert (= (and b!360652 res!200706) b!360657))

(assert (= (and b!360657 res!200705) b!360654))

(assert (= (and b!360655 condMapEmpty!14007) mapIsEmpty!14007))

(assert (= (and b!360655 (not condMapEmpty!14007)) mapNonEmpty!14007))

(get-info :version)

(assert (= (and mapNonEmpty!14007 ((_ is ValueCellFull!3822) mapValue!14007)) b!360658))

(assert (= (and b!360655 ((_ is ValueCellFull!3822) mapDefault!14007)) b!360650))

(assert (= start!35902 b!360655))

(declare-fun m!357717 () Bool)

(assert (=> mapNonEmpty!14007 m!357717))

(declare-fun m!357719 () Bool)

(assert (=> b!360657 m!357719))

(declare-fun m!357721 () Bool)

(assert (=> b!360652 m!357721))

(declare-fun m!357723 () Bool)

(assert (=> b!360660 m!357723))

(declare-fun m!357725 () Bool)

(assert (=> b!360656 m!357725))

(declare-fun m!357727 () Bool)

(assert (=> b!360651 m!357727))

(declare-fun m!357729 () Bool)

(assert (=> b!360654 m!357729))

(declare-fun m!357731 () Bool)

(assert (=> b!360654 m!357731))

(declare-fun m!357733 () Bool)

(assert (=> start!35902 m!357733))

(declare-fun m!357735 () Bool)

(assert (=> start!35902 m!357735))

(declare-fun m!357737 () Bool)

(assert (=> start!35902 m!357737))

(check-sat (not mapNonEmpty!14007) (not b!360652) (not start!35902) (not b!360660) (not b!360654) (not b!360651) (not b!360656) tp_is_empty!8331)
(check-sat)
