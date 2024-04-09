; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84322 () Bool)

(assert start!84322)

(declare-fun b!985969 () Bool)

(declare-fun res!659832 () Bool)

(declare-fun e!555888 () Bool)

(assert (=> b!985969 (=> (not res!659832) (not e!555888))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35779 0))(
  ( (V!35780 (val!11599 Int)) )
))
(declare-datatypes ((ValueCell!11067 0))(
  ( (ValueCellFull!11067 (v!14161 V!35779)) (EmptyCell!11067) )
))
(declare-datatypes ((array!62151 0))(
  ( (array!62152 (arr!29929 (Array (_ BitVec 32) ValueCell!11067)) (size!30409 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62151)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62153 0))(
  ( (array!62154 (arr!29930 (Array (_ BitVec 32) (_ BitVec 64))) (size!30410 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62153)

(assert (=> b!985969 (= res!659832 (and (= (size!30409 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30410 _keys!1544) (size!30409 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!659830 () Bool)

(assert (=> start!84322 (=> (not res!659830) (not e!555888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84322 (= res!659830 (validMask!0 mask!1948))))

(assert (=> start!84322 e!555888))

(assert (=> start!84322 true))

(declare-fun e!555889 () Bool)

(declare-fun array_inv!22997 (array!62151) Bool)

(assert (=> start!84322 (and (array_inv!22997 _values!1278) e!555889)))

(declare-fun array_inv!22998 (array!62153) Bool)

(assert (=> start!84322 (array_inv!22998 _keys!1544)))

(declare-fun mapIsEmpty!36674 () Bool)

(declare-fun mapRes!36674 () Bool)

(assert (=> mapIsEmpty!36674 mapRes!36674))

(declare-fun b!985970 () Bool)

(declare-fun e!555890 () Bool)

(assert (=> b!985970 (= e!555889 (and e!555890 mapRes!36674))))

(declare-fun condMapEmpty!36674 () Bool)

(declare-fun mapDefault!36674 () ValueCell!11067)

(assert (=> b!985970 (= condMapEmpty!36674 (= (arr!29929 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11067)) mapDefault!36674)))))

(declare-fun b!985971 () Bool)

(declare-fun tp_is_empty!23097 () Bool)

(assert (=> b!985971 (= e!555890 tp_is_empty!23097)))

(declare-fun mapNonEmpty!36674 () Bool)

(declare-fun tp!69530 () Bool)

(declare-fun e!555887 () Bool)

(assert (=> mapNonEmpty!36674 (= mapRes!36674 (and tp!69530 e!555887))))

(declare-fun mapRest!36674 () (Array (_ BitVec 32) ValueCell!11067))

(declare-fun mapValue!36674 () ValueCell!11067)

(declare-fun mapKey!36674 () (_ BitVec 32))

(assert (=> mapNonEmpty!36674 (= (arr!29929 _values!1278) (store mapRest!36674 mapKey!36674 mapValue!36674))))

(declare-fun b!985972 () Bool)

(assert (=> b!985972 (= e!555888 false)))

(declare-fun lt!437386 () Bool)

(declare-datatypes ((List!20845 0))(
  ( (Nil!20842) (Cons!20841 (h!22003 (_ BitVec 64)) (t!29752 List!20845)) )
))
(declare-fun arrayNoDuplicates!0 (array!62153 (_ BitVec 32) List!20845) Bool)

(assert (=> b!985972 (= lt!437386 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20842))))

(declare-fun b!985973 () Bool)

(assert (=> b!985973 (= e!555887 tp_is_empty!23097)))

(declare-fun b!985974 () Bool)

(declare-fun res!659831 () Bool)

(assert (=> b!985974 (=> (not res!659831) (not e!555888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62153 (_ BitVec 32)) Bool)

(assert (=> b!985974 (= res!659831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84322 res!659830) b!985969))

(assert (= (and b!985969 res!659832) b!985974))

(assert (= (and b!985974 res!659831) b!985972))

(assert (= (and b!985970 condMapEmpty!36674) mapIsEmpty!36674))

(assert (= (and b!985970 (not condMapEmpty!36674)) mapNonEmpty!36674))

(get-info :version)

(assert (= (and mapNonEmpty!36674 ((_ is ValueCellFull!11067) mapValue!36674)) b!985973))

(assert (= (and b!985970 ((_ is ValueCellFull!11067) mapDefault!36674)) b!985971))

(assert (= start!84322 b!985970))

(declare-fun m!913019 () Bool)

(assert (=> start!84322 m!913019))

(declare-fun m!913021 () Bool)

(assert (=> start!84322 m!913021))

(declare-fun m!913023 () Bool)

(assert (=> start!84322 m!913023))

(declare-fun m!913025 () Bool)

(assert (=> mapNonEmpty!36674 m!913025))

(declare-fun m!913027 () Bool)

(assert (=> b!985972 m!913027))

(declare-fun m!913029 () Bool)

(assert (=> b!985974 m!913029))

(check-sat (not b!985974) (not b!985972) (not start!84322) (not mapNonEmpty!36674) tp_is_empty!23097)
(check-sat)
