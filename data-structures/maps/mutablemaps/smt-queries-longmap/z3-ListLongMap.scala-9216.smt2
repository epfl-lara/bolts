; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110682 () Bool)

(assert start!110682)

(declare-fun b_free!29481 () Bool)

(declare-fun b_next!29481 () Bool)

(assert (=> start!110682 (= b_free!29481 (not b_next!29481))))

(declare-fun tp!103765 () Bool)

(declare-fun b_and!47699 () Bool)

(assert (=> start!110682 (= tp!103765 b_and!47699)))

(declare-fun b!1309134 () Bool)

(declare-fun res!869136 () Bool)

(declare-fun e!746941 () Bool)

(assert (=> b!1309134 (=> (not res!869136) (not e!746941))))

(declare-datatypes ((array!87385 0))(
  ( (array!87386 (arr!42168 (Array (_ BitVec 32) (_ BitVec 64))) (size!42719 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87385)

(declare-datatypes ((List!30102 0))(
  ( (Nil!30099) (Cons!30098 (h!31307 (_ BitVec 64)) (t!43715 List!30102)) )
))
(declare-fun arrayNoDuplicates!0 (array!87385 (_ BitVec 32) List!30102) Bool)

(assert (=> b!1309134 (= res!869136 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30099))))

(declare-fun res!869134 () Bool)

(assert (=> start!110682 (=> (not res!869134) (not e!746941))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110682 (= res!869134 (validMask!0 mask!2040))))

(assert (=> start!110682 e!746941))

(assert (=> start!110682 tp!103765))

(declare-fun array_inv!31869 (array!87385) Bool)

(assert (=> start!110682 (array_inv!31869 _keys!1628)))

(assert (=> start!110682 true))

(declare-fun tp_is_empty!35211 () Bool)

(assert (=> start!110682 tp_is_empty!35211))

(declare-datatypes ((V!52051 0))(
  ( (V!52052 (val!17680 Int)) )
))
(declare-datatypes ((ValueCell!16707 0))(
  ( (ValueCellFull!16707 (v!20305 V!52051)) (EmptyCell!16707) )
))
(declare-datatypes ((array!87387 0))(
  ( (array!87388 (arr!42169 (Array (_ BitVec 32) ValueCell!16707)) (size!42720 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87387)

(declare-fun e!746942 () Bool)

(declare-fun array_inv!31870 (array!87387) Bool)

(assert (=> start!110682 (and (array_inv!31870 _values!1354) e!746942)))

(declare-fun b!1309135 () Bool)

(declare-fun e!746945 () Bool)

(declare-fun mapRes!54445 () Bool)

(assert (=> b!1309135 (= e!746942 (and e!746945 mapRes!54445))))

(declare-fun condMapEmpty!54445 () Bool)

(declare-fun mapDefault!54445 () ValueCell!16707)

(assert (=> b!1309135 (= condMapEmpty!54445 (= (arr!42169 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16707)) mapDefault!54445)))))

(declare-fun b!1309136 () Bool)

(assert (=> b!1309136 (= e!746941 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52051)

(declare-fun zeroValue!1296 () V!52051)

(declare-fun lt!585172 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22932 0))(
  ( (tuple2!22933 (_1!11476 (_ BitVec 64)) (_2!11476 V!52051)) )
))
(declare-datatypes ((List!30103 0))(
  ( (Nil!30100) (Cons!30099 (h!31308 tuple2!22932) (t!43716 List!30103)) )
))
(declare-datatypes ((ListLongMap!20601 0))(
  ( (ListLongMap!20602 (toList!10316 List!30103)) )
))
(declare-fun contains!8402 (ListLongMap!20601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5272 (array!87385 array!87387 (_ BitVec 32) (_ BitVec 32) V!52051 V!52051 (_ BitVec 32) Int) ListLongMap!20601)

(assert (=> b!1309136 (= lt!585172 (contains!8402 (getCurrentListMap!5272 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309137 () Bool)

(assert (=> b!1309137 (= e!746945 tp_is_empty!35211)))

(declare-fun mapNonEmpty!54445 () Bool)

(declare-fun tp!103766 () Bool)

(declare-fun e!746943 () Bool)

(assert (=> mapNonEmpty!54445 (= mapRes!54445 (and tp!103766 e!746943))))

(declare-fun mapKey!54445 () (_ BitVec 32))

(declare-fun mapValue!54445 () ValueCell!16707)

(declare-fun mapRest!54445 () (Array (_ BitVec 32) ValueCell!16707))

(assert (=> mapNonEmpty!54445 (= (arr!42169 _values!1354) (store mapRest!54445 mapKey!54445 mapValue!54445))))

(declare-fun b!1309138 () Bool)

(declare-fun res!869138 () Bool)

(assert (=> b!1309138 (=> (not res!869138) (not e!746941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87385 (_ BitVec 32)) Bool)

(assert (=> b!1309138 (= res!869138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54445 () Bool)

(assert (=> mapIsEmpty!54445 mapRes!54445))

(declare-fun b!1309139 () Bool)

(assert (=> b!1309139 (= e!746943 tp_is_empty!35211)))

(declare-fun b!1309140 () Bool)

(declare-fun res!869135 () Bool)

(assert (=> b!1309140 (=> (not res!869135) (not e!746941))))

(assert (=> b!1309140 (= res!869135 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42719 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309141 () Bool)

(declare-fun res!869137 () Bool)

(assert (=> b!1309141 (=> (not res!869137) (not e!746941))))

(assert (=> b!1309141 (= res!869137 (and (= (size!42720 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42719 _keys!1628) (size!42720 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110682 res!869134) b!1309141))

(assert (= (and b!1309141 res!869137) b!1309138))

(assert (= (and b!1309138 res!869138) b!1309134))

(assert (= (and b!1309134 res!869136) b!1309140))

(assert (= (and b!1309140 res!869135) b!1309136))

(assert (= (and b!1309135 condMapEmpty!54445) mapIsEmpty!54445))

(assert (= (and b!1309135 (not condMapEmpty!54445)) mapNonEmpty!54445))

(get-info :version)

(assert (= (and mapNonEmpty!54445 ((_ is ValueCellFull!16707) mapValue!54445)) b!1309139))

(assert (= (and b!1309135 ((_ is ValueCellFull!16707) mapDefault!54445)) b!1309137))

(assert (= start!110682 b!1309135))

(declare-fun m!1199323 () Bool)

(assert (=> b!1309136 m!1199323))

(assert (=> b!1309136 m!1199323))

(declare-fun m!1199325 () Bool)

(assert (=> b!1309136 m!1199325))

(declare-fun m!1199327 () Bool)

(assert (=> start!110682 m!1199327))

(declare-fun m!1199329 () Bool)

(assert (=> start!110682 m!1199329))

(declare-fun m!1199331 () Bool)

(assert (=> start!110682 m!1199331))

(declare-fun m!1199333 () Bool)

(assert (=> mapNonEmpty!54445 m!1199333))

(declare-fun m!1199335 () Bool)

(assert (=> b!1309134 m!1199335))

(declare-fun m!1199337 () Bool)

(assert (=> b!1309138 m!1199337))

(check-sat tp_is_empty!35211 (not b!1309134) (not mapNonEmpty!54445) (not b!1309136) b_and!47699 (not b_next!29481) (not start!110682) (not b!1309138))
(check-sat b_and!47699 (not b_next!29481))
