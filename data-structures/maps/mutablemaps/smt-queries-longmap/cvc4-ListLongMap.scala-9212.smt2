; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110660 () Bool)

(assert start!110660)

(declare-fun b_free!29459 () Bool)

(declare-fun b_next!29459 () Bool)

(assert (=> start!110660 (= b_free!29459 (not b_next!29459))))

(declare-fun tp!103699 () Bool)

(declare-fun b_and!47677 () Bool)

(assert (=> start!110660 (= tp!103699 b_and!47677)))

(declare-fun b!1308870 () Bool)

(declare-fun res!868969 () Bool)

(declare-fun e!746780 () Bool)

(assert (=> b!1308870 (=> (not res!868969) (not e!746780))))

(declare-datatypes ((array!87343 0))(
  ( (array!87344 (arr!42147 (Array (_ BitVec 32) (_ BitVec 64))) (size!42698 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87343)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87343 (_ BitVec 32)) Bool)

(assert (=> b!1308870 (= res!868969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308871 () Bool)

(declare-fun res!868972 () Bool)

(assert (=> b!1308871 (=> (not res!868972) (not e!746780))))

(declare-datatypes ((V!52021 0))(
  ( (V!52022 (val!17669 Int)) )
))
(declare-datatypes ((ValueCell!16696 0))(
  ( (ValueCellFull!16696 (v!20294 V!52021)) (EmptyCell!16696) )
))
(declare-datatypes ((array!87345 0))(
  ( (array!87346 (arr!42148 (Array (_ BitVec 32) ValueCell!16696)) (size!42699 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87345)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308871 (= res!868972 (and (= (size!42699 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42698 _keys!1628) (size!42699 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!868971 () Bool)

(assert (=> start!110660 (=> (not res!868971) (not e!746780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110660 (= res!868971 (validMask!0 mask!2040))))

(assert (=> start!110660 e!746780))

(assert (=> start!110660 tp!103699))

(declare-fun array_inv!31859 (array!87343) Bool)

(assert (=> start!110660 (array_inv!31859 _keys!1628)))

(assert (=> start!110660 true))

(declare-fun tp_is_empty!35189 () Bool)

(assert (=> start!110660 tp_is_empty!35189))

(declare-fun e!746778 () Bool)

(declare-fun array_inv!31860 (array!87345) Bool)

(assert (=> start!110660 (and (array_inv!31860 _values!1354) e!746778)))

(declare-fun b!1308872 () Bool)

(assert (=> b!1308872 (= e!746780 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52021)

(declare-fun zeroValue!1296 () V!52021)

(declare-fun lt!585139 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22918 0))(
  ( (tuple2!22919 (_1!11469 (_ BitVec 64)) (_2!11469 V!52021)) )
))
(declare-datatypes ((List!30089 0))(
  ( (Nil!30086) (Cons!30085 (h!31294 tuple2!22918) (t!43702 List!30089)) )
))
(declare-datatypes ((ListLongMap!20587 0))(
  ( (ListLongMap!20588 (toList!10309 List!30089)) )
))
(declare-fun contains!8395 (ListLongMap!20587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5265 (array!87343 array!87345 (_ BitVec 32) (_ BitVec 32) V!52021 V!52021 (_ BitVec 32) Int) ListLongMap!20587)

(assert (=> b!1308872 (= lt!585139 (contains!8395 (getCurrentListMap!5265 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308873 () Bool)

(declare-fun res!868970 () Bool)

(assert (=> b!1308873 (=> (not res!868970) (not e!746780))))

(declare-datatypes ((List!30090 0))(
  ( (Nil!30087) (Cons!30086 (h!31295 (_ BitVec 64)) (t!43703 List!30090)) )
))
(declare-fun arrayNoDuplicates!0 (array!87343 (_ BitVec 32) List!30090) Bool)

(assert (=> b!1308873 (= res!868970 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30087))))

(declare-fun b!1308874 () Bool)

(declare-fun e!746777 () Bool)

(declare-fun mapRes!54412 () Bool)

(assert (=> b!1308874 (= e!746778 (and e!746777 mapRes!54412))))

(declare-fun condMapEmpty!54412 () Bool)

(declare-fun mapDefault!54412 () ValueCell!16696)

