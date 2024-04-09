; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111588 () Bool)

(assert start!111588)

(declare-fun b_free!30209 () Bool)

(declare-fun b_next!30209 () Bool)

(assert (=> start!111588 (= b_free!30209 (not b_next!30209))))

(declare-fun tp!106103 () Bool)

(declare-fun b_and!48587 () Bool)

(assert (=> start!111588 (= tp!106103 b_and!48587)))

(declare-fun b!1320774 () Bool)

(declare-fun res!876705 () Bool)

(declare-fun e!753381 () Bool)

(assert (=> b!1320774 (=> (not res!876705) (not e!753381))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-datatypes ((array!88951 0))(
  ( (array!88952 (arr!42945 (Array (_ BitVec 32) (_ BitVec 64))) (size!43496 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88951)

(assert (=> b!1320774 (= res!876705 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43496 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55691 () Bool)

(declare-fun mapRes!55691 () Bool)

(assert (=> mapIsEmpty!55691 mapRes!55691))

(declare-fun res!876710 () Bool)

(assert (=> start!111588 (=> (not res!876710) (not e!753381))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111588 (= res!876710 (validMask!0 mask!2019))))

(assert (=> start!111588 e!753381))

(declare-fun array_inv!32377 (array!88951) Bool)

(assert (=> start!111588 (array_inv!32377 _keys!1609)))

(assert (=> start!111588 true))

(declare-fun tp_is_empty!36029 () Bool)

(assert (=> start!111588 tp_is_empty!36029))

(declare-datatypes ((V!53141 0))(
  ( (V!53142 (val!18089 Int)) )
))
(declare-datatypes ((ValueCell!17116 0))(
  ( (ValueCellFull!17116 (v!20717 V!53141)) (EmptyCell!17116) )
))
(declare-datatypes ((array!88953 0))(
  ( (array!88954 (arr!42946 (Array (_ BitVec 32) ValueCell!17116)) (size!43497 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88953)

(declare-fun e!753379 () Bool)

(declare-fun array_inv!32378 (array!88953) Bool)

(assert (=> start!111588 (and (array_inv!32378 _values!1337) e!753379)))

(assert (=> start!111588 tp!106103))

(declare-fun b!1320775 () Bool)

(declare-fun res!876708 () Bool)

(assert (=> b!1320775 (=> (not res!876708) (not e!753381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88951 (_ BitVec 32)) Bool)

(assert (=> b!1320775 (= res!876708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320776 () Bool)

(declare-fun e!753378 () Bool)

(assert (=> b!1320776 (= e!753378 tp_is_empty!36029)))

(declare-fun b!1320777 () Bool)

(assert (=> b!1320777 (= e!753379 (and e!753378 mapRes!55691))))

(declare-fun condMapEmpty!55691 () Bool)

(declare-fun mapDefault!55691 () ValueCell!17116)

