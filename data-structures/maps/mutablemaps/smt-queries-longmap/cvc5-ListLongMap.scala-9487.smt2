; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112566 () Bool)

(assert start!112566)

(declare-fun b_free!30925 () Bool)

(declare-fun b_next!30925 () Bool)

(assert (=> start!112566 (= b_free!30925 (not b_next!30925))))

(declare-fun tp!108413 () Bool)

(declare-fun b_and!49843 () Bool)

(assert (=> start!112566 (= tp!108413 b_and!49843)))

(declare-fun b!1334713 () Bool)

(declare-fun res!885916 () Bool)

(declare-fun e!760195 () Bool)

(assert (=> b!1334713 (=> (not res!885916) (not e!760195))))

(declare-datatypes ((V!54217 0))(
  ( (V!54218 (val!18492 Int)) )
))
(declare-datatypes ((ValueCell!17519 0))(
  ( (ValueCellFull!17519 (v!21127 V!54217)) (EmptyCell!17519) )
))
(declare-datatypes ((array!90511 0))(
  ( (array!90512 (arr!43717 (Array (_ BitVec 32) ValueCell!17519)) (size!44268 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90511)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90513 0))(
  ( (array!90514 (arr!43718 (Array (_ BitVec 32) (_ BitVec 64))) (size!44269 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90513)

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1334713 (= res!885916 (and (= (size!44268 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44269 _keys!1590) (size!44268 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56926 () Bool)

(declare-fun mapRes!56926 () Bool)

(assert (=> mapIsEmpty!56926 mapRes!56926))

(declare-fun b!1334714 () Bool)

(declare-fun res!885915 () Bool)

(assert (=> b!1334714 (=> (not res!885915) (not e!760195))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334714 (= res!885915 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44269 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334715 () Bool)

(declare-fun e!760193 () Bool)

(declare-fun tp_is_empty!36835 () Bool)

(assert (=> b!1334715 (= e!760193 tp_is_empty!36835)))

(declare-fun b!1334716 () Bool)

(declare-fun res!885917 () Bool)

(assert (=> b!1334716 (=> (not res!885917) (not e!760195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90513 (_ BitVec 32)) Bool)

(assert (=> b!1334716 (= res!885917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334717 () Bool)

(declare-fun e!760192 () Bool)

(declare-fun e!760191 () Bool)

(assert (=> b!1334717 (= e!760192 (and e!760191 mapRes!56926))))

(declare-fun condMapEmpty!56926 () Bool)

(declare-fun mapDefault!56926 () ValueCell!17519)

