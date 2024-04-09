; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109034 () Bool)

(assert start!109034)

(declare-fun b_free!28487 () Bool)

(declare-fun b_next!28487 () Bool)

(assert (=> start!109034 (= b_free!28487 (not b_next!28487))))

(declare-fun tp!100581 () Bool)

(declare-fun b_and!46587 () Bool)

(assert (=> start!109034 (= tp!100581 b_and!46587)))

(declare-fun b!1287961 () Bool)

(declare-fun e!735504 () Bool)

(declare-fun tp_is_empty!34127 () Bool)

(assert (=> b!1287961 (= e!735504 tp_is_empty!34127)))

(declare-fun res!855513 () Bool)

(declare-fun e!735506 () Bool)

(assert (=> start!109034 (=> (not res!855513) (not e!735506))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109034 (= res!855513 (validMask!0 mask!2175))))

(assert (=> start!109034 e!735506))

(assert (=> start!109034 tp_is_empty!34127))

(assert (=> start!109034 true))

(declare-datatypes ((V!50605 0))(
  ( (V!50606 (val!17138 Int)) )
))
(declare-datatypes ((ValueCell!16165 0))(
  ( (ValueCellFull!16165 (v!19739 V!50605)) (EmptyCell!16165) )
))
(declare-datatypes ((array!85255 0))(
  ( (array!85256 (arr!41124 (Array (_ BitVec 32) ValueCell!16165)) (size!41675 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85255)

(declare-fun e!735507 () Bool)

(declare-fun array_inv!31157 (array!85255) Bool)

(assert (=> start!109034 (and (array_inv!31157 _values!1445) e!735507)))

(declare-datatypes ((array!85257 0))(
  ( (array!85258 (arr!41125 (Array (_ BitVec 32) (_ BitVec 64))) (size!41676 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85257)

(declare-fun array_inv!31158 (array!85257) Bool)

(assert (=> start!109034 (array_inv!31158 _keys!1741)))

(assert (=> start!109034 tp!100581))

(declare-fun b!1287962 () Bool)

(declare-fun res!855511 () Bool)

(assert (=> b!1287962 (=> (not res!855511) (not e!735506))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1287962 (= res!855511 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41676 _keys!1741))))))

(declare-fun mapNonEmpty!52751 () Bool)

(declare-fun mapRes!52751 () Bool)

(declare-fun tp!100580 () Bool)

(assert (=> mapNonEmpty!52751 (= mapRes!52751 (and tp!100580 e!735504))))

(declare-fun mapKey!52751 () (_ BitVec 32))

(declare-fun mapRest!52751 () (Array (_ BitVec 32) ValueCell!16165))

(declare-fun mapValue!52751 () ValueCell!16165)

(assert (=> mapNonEmpty!52751 (= (arr!41124 _values!1445) (store mapRest!52751 mapKey!52751 mapValue!52751))))

(declare-fun b!1287963 () Bool)

(declare-fun res!855510 () Bool)

(assert (=> b!1287963 (=> (not res!855510) (not e!735506))))

(declare-datatypes ((List!29331 0))(
  ( (Nil!29328) (Cons!29327 (h!30536 (_ BitVec 64)) (t!42902 List!29331)) )
))
(declare-fun arrayNoDuplicates!0 (array!85257 (_ BitVec 32) List!29331) Bool)

(assert (=> b!1287963 (= res!855510 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29328))))

(declare-fun b!1287964 () Bool)

(declare-fun res!855507 () Bool)

(assert (=> b!1287964 (=> (not res!855507) (not e!735506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85257 (_ BitVec 32)) Bool)

(assert (=> b!1287964 (= res!855507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52751 () Bool)

(assert (=> mapIsEmpty!52751 mapRes!52751))

(declare-fun b!1287965 () Bool)

(declare-fun e!735505 () Bool)

(assert (=> b!1287965 (= e!735507 (and e!735505 mapRes!52751))))

(declare-fun condMapEmpty!52751 () Bool)

(declare-fun mapDefault!52751 () ValueCell!16165)

