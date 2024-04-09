; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112560 () Bool)

(assert start!112560)

(declare-fun b_free!30919 () Bool)

(declare-fun b_next!30919 () Bool)

(assert (=> start!112560 (= b_free!30919 (not b_next!30919))))

(declare-fun tp!108395 () Bool)

(declare-fun b_and!49837 () Bool)

(assert (=> start!112560 (= tp!108395 b_and!49837)))

(declare-fun res!885870 () Bool)

(declare-fun e!760146 () Bool)

(assert (=> start!112560 (=> (not res!885870) (not e!760146))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112560 (= res!885870 (validMask!0 mask!1998))))

(assert (=> start!112560 e!760146))

(declare-datatypes ((V!54209 0))(
  ( (V!54210 (val!18489 Int)) )
))
(declare-datatypes ((ValueCell!17516 0))(
  ( (ValueCellFull!17516 (v!21124 V!54209)) (EmptyCell!17516) )
))
(declare-datatypes ((array!90499 0))(
  ( (array!90500 (arr!43711 (Array (_ BitVec 32) ValueCell!17516)) (size!44262 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90499)

(declare-fun e!760147 () Bool)

(declare-fun array_inv!32901 (array!90499) Bool)

(assert (=> start!112560 (and (array_inv!32901 _values!1320) e!760147)))

(assert (=> start!112560 true))

(declare-datatypes ((array!90501 0))(
  ( (array!90502 (arr!43712 (Array (_ BitVec 32) (_ BitVec 64))) (size!44263 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90501)

(declare-fun array_inv!32902 (array!90501) Bool)

(assert (=> start!112560 (array_inv!32902 _keys!1590)))

(assert (=> start!112560 tp!108395))

(declare-fun tp_is_empty!36829 () Bool)

(assert (=> start!112560 tp_is_empty!36829))

(declare-fun b!1334641 () Bool)

(declare-fun e!760149 () Bool)

(assert (=> b!1334641 (= e!760149 tp_is_empty!36829)))

(declare-fun mapIsEmpty!56917 () Bool)

(declare-fun mapRes!56917 () Bool)

(assert (=> mapIsEmpty!56917 mapRes!56917))

(declare-fun b!1334642 () Bool)

(declare-fun res!885869 () Bool)

(assert (=> b!1334642 (=> (not res!885869) (not e!760146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90501 (_ BitVec 32)) Bool)

(assert (=> b!1334642 (= res!885869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334643 () Bool)

(assert (=> b!1334643 (= e!760146 false)))

(declare-fun lt!592316 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54209)

(declare-fun zeroValue!1262 () V!54209)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23998 0))(
  ( (tuple2!23999 (_1!12009 (_ BitVec 64)) (_2!12009 V!54209)) )
))
(declare-datatypes ((List!31169 0))(
  ( (Nil!31166) (Cons!31165 (h!32374 tuple2!23998) (t!45440 List!31169)) )
))
(declare-datatypes ((ListLongMap!21667 0))(
  ( (ListLongMap!21668 (toList!10849 List!31169)) )
))
(declare-fun contains!8949 (ListLongMap!21667 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5760 (array!90501 array!90499 (_ BitVec 32) (_ BitVec 32) V!54209 V!54209 (_ BitVec 32) Int) ListLongMap!21667)

(assert (=> b!1334643 (= lt!592316 (contains!8949 (getCurrentListMap!5760 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1334644 () Bool)

(declare-fun res!885871 () Bool)

(assert (=> b!1334644 (=> (not res!885871) (not e!760146))))

(declare-datatypes ((List!31170 0))(
  ( (Nil!31167) (Cons!31166 (h!32375 (_ BitVec 64)) (t!45441 List!31170)) )
))
(declare-fun arrayNoDuplicates!0 (array!90501 (_ BitVec 32) List!31170) Bool)

(assert (=> b!1334644 (= res!885871 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31167))))

(declare-fun b!1334645 () Bool)

(declare-fun res!885868 () Bool)

(assert (=> b!1334645 (=> (not res!885868) (not e!760146))))

(assert (=> b!1334645 (= res!885868 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44263 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334646 () Bool)

(declare-fun e!760148 () Bool)

(assert (=> b!1334646 (= e!760148 tp_is_empty!36829)))

(declare-fun b!1334647 () Bool)

(declare-fun res!885872 () Bool)

(assert (=> b!1334647 (=> (not res!885872) (not e!760146))))

(assert (=> b!1334647 (= res!885872 (and (= (size!44262 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44263 _keys!1590) (size!44262 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334648 () Bool)

(assert (=> b!1334648 (= e!760147 (and e!760149 mapRes!56917))))

(declare-fun condMapEmpty!56917 () Bool)

(declare-fun mapDefault!56917 () ValueCell!17516)

