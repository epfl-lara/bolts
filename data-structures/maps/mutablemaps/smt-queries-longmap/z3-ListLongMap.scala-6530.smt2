; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83094 () Bool)

(assert start!83094)

(declare-fun b!968888 () Bool)

(declare-fun e!546190 () Bool)

(declare-fun e!546188 () Bool)

(declare-fun mapRes!34945 () Bool)

(assert (=> b!968888 (= e!546190 (and e!546188 mapRes!34945))))

(declare-fun condMapEmpty!34945 () Bool)

(declare-datatypes ((V!34259 0))(
  ( (V!34260 (val!11029 Int)) )
))
(declare-datatypes ((ValueCell!10497 0))(
  ( (ValueCellFull!10497 (v!13588 V!34259)) (EmptyCell!10497) )
))
(declare-datatypes ((array!59965 0))(
  ( (array!59966 (arr!28842 (Array (_ BitVec 32) ValueCell!10497)) (size!29322 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59965)

(declare-fun mapDefault!34945 () ValueCell!10497)

(assert (=> b!968888 (= condMapEmpty!34945 (= (arr!28842 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10497)) mapDefault!34945)))))

(declare-fun mapIsEmpty!34945 () Bool)

(assert (=> mapIsEmpty!34945 mapRes!34945))

(declare-fun b!968889 () Bool)

(declare-fun res!648654 () Bool)

(declare-fun e!546189 () Bool)

(assert (=> b!968889 (=> (not res!648654) (not e!546189))))

(declare-datatypes ((array!59967 0))(
  ( (array!59968 (arr!28843 (Array (_ BitVec 32) (_ BitVec 64))) (size!29323 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59967)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59967 (_ BitVec 32)) Bool)

(assert (=> b!968889 (= res!648654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968890 () Bool)

(declare-fun tp_is_empty!21957 () Bool)

(assert (=> b!968890 (= e!546188 tp_is_empty!21957)))

(declare-fun res!648653 () Bool)

(assert (=> start!83094 (=> (not res!648653) (not e!546189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83094 (= res!648653 (validMask!0 mask!2147))))

(assert (=> start!83094 e!546189))

(assert (=> start!83094 true))

(declare-fun array_inv!22223 (array!59965) Bool)

(assert (=> start!83094 (and (array_inv!22223 _values!1425) e!546190)))

(declare-fun array_inv!22224 (array!59967) Bool)

(assert (=> start!83094 (array_inv!22224 _keys!1717)))

(declare-fun mapNonEmpty!34945 () Bool)

(declare-fun tp!66514 () Bool)

(declare-fun e!546192 () Bool)

(assert (=> mapNonEmpty!34945 (= mapRes!34945 (and tp!66514 e!546192))))

(declare-fun mapKey!34945 () (_ BitVec 32))

(declare-fun mapRest!34945 () (Array (_ BitVec 32) ValueCell!10497))

(declare-fun mapValue!34945 () ValueCell!10497)

(assert (=> mapNonEmpty!34945 (= (arr!28842 _values!1425) (store mapRest!34945 mapKey!34945 mapValue!34945))))

(declare-fun b!968891 () Bool)

(assert (=> b!968891 (= e!546189 false)))

(declare-fun lt!431530 () Bool)

(declare-datatypes ((List!20132 0))(
  ( (Nil!20129) (Cons!20128 (h!21290 (_ BitVec 64)) (t!28503 List!20132)) )
))
(declare-fun arrayNoDuplicates!0 (array!59967 (_ BitVec 32) List!20132) Bool)

(assert (=> b!968891 (= lt!431530 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20129))))

(declare-fun b!968892 () Bool)

(declare-fun res!648655 () Bool)

(assert (=> b!968892 (=> (not res!648655) (not e!546189))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968892 (= res!648655 (and (= (size!29322 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29323 _keys!1717) (size!29322 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968893 () Bool)

(assert (=> b!968893 (= e!546192 tp_is_empty!21957)))

(assert (= (and start!83094 res!648653) b!968892))

(assert (= (and b!968892 res!648655) b!968889))

(assert (= (and b!968889 res!648654) b!968891))

(assert (= (and b!968888 condMapEmpty!34945) mapIsEmpty!34945))

(assert (= (and b!968888 (not condMapEmpty!34945)) mapNonEmpty!34945))

(get-info :version)

(assert (= (and mapNonEmpty!34945 ((_ is ValueCellFull!10497) mapValue!34945)) b!968893))

(assert (= (and b!968888 ((_ is ValueCellFull!10497) mapDefault!34945)) b!968890))

(assert (= start!83094 b!968888))

(declare-fun m!897131 () Bool)

(assert (=> b!968889 m!897131))

(declare-fun m!897133 () Bool)

(assert (=> start!83094 m!897133))

(declare-fun m!897135 () Bool)

(assert (=> start!83094 m!897135))

(declare-fun m!897137 () Bool)

(assert (=> start!83094 m!897137))

(declare-fun m!897139 () Bool)

(assert (=> mapNonEmpty!34945 m!897139))

(declare-fun m!897141 () Bool)

(assert (=> b!968891 m!897141))

(check-sat tp_is_empty!21957 (not start!83094) (not b!968891) (not b!968889) (not mapNonEmpty!34945))
(check-sat)
