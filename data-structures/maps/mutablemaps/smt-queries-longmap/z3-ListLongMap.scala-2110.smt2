; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35838 () Bool)

(assert start!35838)

(declare-fun b!359815 () Bool)

(declare-fun e!220390 () Bool)

(declare-fun tp_is_empty!8283 () Bool)

(assert (=> b!359815 (= e!220390 tp_is_empty!8283)))

(declare-fun b!359816 () Bool)

(declare-fun res!200106 () Bool)

(declare-fun e!220391 () Bool)

(assert (=> b!359816 (=> (not res!200106) (not e!220391))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-datatypes ((array!20087 0))(
  ( (array!20088 (arr!9534 (Array (_ BitVec 32) (_ BitVec 64))) (size!9886 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20087)

(assert (=> b!359816 (= res!200106 (not (= (select (arr!9534 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!359817 () Bool)

(declare-fun res!200103 () Bool)

(assert (=> b!359817 (=> (not res!200103) (not e!220391))))

(declare-fun arrayContainsKey!0 (array!20087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359817 (= res!200103 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!359818 () Bool)

(declare-fun e!220387 () Bool)

(declare-fun e!220389 () Bool)

(declare-fun mapRes!13932 () Bool)

(assert (=> b!359818 (= e!220387 (and e!220389 mapRes!13932))))

(declare-fun condMapEmpty!13932 () Bool)

(declare-datatypes ((V!12021 0))(
  ( (V!12022 (val!4186 Int)) )
))
(declare-datatypes ((ValueCell!3798 0))(
  ( (ValueCellFull!3798 (v!6376 V!12021)) (EmptyCell!3798) )
))
(declare-datatypes ((array!20089 0))(
  ( (array!20090 (arr!9535 (Array (_ BitVec 32) ValueCell!3798)) (size!9887 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20089)

(declare-fun mapDefault!13932 () ValueCell!3798)

(assert (=> b!359818 (= condMapEmpty!13932 (= (arr!9535 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3798)) mapDefault!13932)))))

(declare-fun res!200104 () Bool)

(assert (=> start!35838 (=> (not res!200104) (not e!220391))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35838 (= res!200104 (validMask!0 mask!1842))))

(assert (=> start!35838 e!220391))

(assert (=> start!35838 tp_is_empty!8283))

(assert (=> start!35838 true))

(declare-fun array_inv!7018 (array!20087) Bool)

(assert (=> start!35838 (array_inv!7018 _keys!1456)))

(declare-fun array_inv!7019 (array!20089) Bool)

(assert (=> start!35838 (and (array_inv!7019 _values!1208) e!220387)))

(declare-fun b!359819 () Bool)

(declare-fun res!200110 () Bool)

(assert (=> b!359819 (=> (not res!200110) (not e!220391))))

(declare-datatypes ((List!5507 0))(
  ( (Nil!5504) (Cons!5503 (h!6359 (_ BitVec 64)) (t!10665 List!5507)) )
))
(declare-fun arrayNoDuplicates!0 (array!20087 (_ BitVec 32) List!5507) Bool)

(assert (=> b!359819 (= res!200110 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5504))))

(declare-fun b!359820 () Bool)

(declare-fun res!200107 () Bool)

(assert (=> b!359820 (=> (not res!200107) (not e!220391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359820 (= res!200107 (validKeyInArray!0 k0!1077))))

(declare-fun mapIsEmpty!13932 () Bool)

(assert (=> mapIsEmpty!13932 mapRes!13932))

(declare-fun b!359821 () Bool)

(declare-fun res!200109 () Bool)

(assert (=> b!359821 (=> (not res!200109) (not e!220391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20087 (_ BitVec 32)) Bool)

(assert (=> b!359821 (= res!200109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13932 () Bool)

(declare-fun tp!27999 () Bool)

(assert (=> mapNonEmpty!13932 (= mapRes!13932 (and tp!27999 e!220390))))

(declare-fun mapRest!13932 () (Array (_ BitVec 32) ValueCell!3798))

(declare-fun mapKey!13932 () (_ BitVec 32))

(declare-fun mapValue!13932 () ValueCell!3798)

(assert (=> mapNonEmpty!13932 (= (arr!9535 _values!1208) (store mapRest!13932 mapKey!13932 mapValue!13932))))

(declare-fun b!359822 () Bool)

(declare-fun res!200108 () Bool)

(assert (=> b!359822 (=> (not res!200108) (not e!220391))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359822 (= res!200108 (and (= (size!9887 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9886 _keys!1456) (size!9887 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359823 () Bool)

(assert (=> b!359823 (= e!220391 (not true))))

(assert (=> b!359823 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11063 0))(
  ( (Unit!11064) )
))
(declare-fun lt!166372 () Unit!11063)

(declare-fun minValue!1150 () V!12021)

(declare-fun zeroValue!1150 () V!12021)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!48 (array!20087 array!20089 (_ BitVec 32) (_ BitVec 32) V!12021 V!12021 (_ BitVec 64) (_ BitVec 32)) Unit!11063)

(assert (=> b!359823 (= lt!166372 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!48 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!359824 () Bool)

(declare-fun res!200105 () Bool)

(assert (=> b!359824 (=> (not res!200105) (not e!220391))))

(assert (=> b!359824 (= res!200105 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9886 _keys!1456))))))

(declare-fun b!359825 () Bool)

(assert (=> b!359825 (= e!220389 tp_is_empty!8283)))

(assert (= (and start!35838 res!200104) b!359822))

(assert (= (and b!359822 res!200108) b!359821))

(assert (= (and b!359821 res!200109) b!359819))

(assert (= (and b!359819 res!200110) b!359820))

(assert (= (and b!359820 res!200107) b!359824))

(assert (= (and b!359824 res!200105) b!359817))

(assert (= (and b!359817 res!200103) b!359816))

(assert (= (and b!359816 res!200106) b!359823))

(assert (= (and b!359818 condMapEmpty!13932) mapIsEmpty!13932))

(assert (= (and b!359818 (not condMapEmpty!13932)) mapNonEmpty!13932))

(get-info :version)

(assert (= (and mapNonEmpty!13932 ((_ is ValueCellFull!3798) mapValue!13932)) b!359815))

(assert (= (and b!359818 ((_ is ValueCellFull!3798) mapDefault!13932)) b!359825))

(assert (= start!35838 b!359818))

(declare-fun m!357163 () Bool)

(assert (=> b!359817 m!357163))

(declare-fun m!357165 () Bool)

(assert (=> b!359820 m!357165))

(declare-fun m!357167 () Bool)

(assert (=> mapNonEmpty!13932 m!357167))

(declare-fun m!357169 () Bool)

(assert (=> b!359816 m!357169))

(declare-fun m!357171 () Bool)

(assert (=> start!35838 m!357171))

(declare-fun m!357173 () Bool)

(assert (=> start!35838 m!357173))

(declare-fun m!357175 () Bool)

(assert (=> start!35838 m!357175))

(declare-fun m!357177 () Bool)

(assert (=> b!359819 m!357177))

(declare-fun m!357179 () Bool)

(assert (=> b!359823 m!357179))

(declare-fun m!357181 () Bool)

(assert (=> b!359823 m!357181))

(declare-fun m!357183 () Bool)

(assert (=> b!359821 m!357183))

(check-sat (not b!359821) (not b!359820) tp_is_empty!8283 (not b!359823) (not start!35838) (not mapNonEmpty!13932) (not b!359817) (not b!359819))
(check-sat)
