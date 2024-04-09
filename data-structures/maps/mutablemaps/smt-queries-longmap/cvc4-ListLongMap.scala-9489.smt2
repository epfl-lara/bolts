; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112582 () Bool)

(assert start!112582)

(declare-fun b_free!30941 () Bool)

(declare-fun b_next!30941 () Bool)

(assert (=> start!112582 (= b_free!30941 (not b_next!30941))))

(declare-fun tp!108461 () Bool)

(declare-fun b_and!49859 () Bool)

(assert (=> start!112582 (= tp!108461 b_and!49859)))

(declare-fun b!1334905 () Bool)

(declare-fun e!760312 () Bool)

(declare-fun tp_is_empty!36851 () Bool)

(assert (=> b!1334905 (= e!760312 tp_is_empty!36851)))

(declare-fun b!1334906 () Bool)

(declare-fun res!886037 () Bool)

(declare-fun e!760313 () Bool)

(assert (=> b!1334906 (=> (not res!886037) (not e!760313))))

(declare-datatypes ((array!90541 0))(
  ( (array!90542 (arr!43732 (Array (_ BitVec 32) (_ BitVec 64))) (size!44283 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90541)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90541 (_ BitVec 32)) Bool)

(assert (=> b!1334906 (= res!886037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334907 () Bool)

(declare-fun res!886034 () Bool)

(assert (=> b!1334907 (=> (not res!886034) (not e!760313))))

(declare-datatypes ((V!54237 0))(
  ( (V!54238 (val!18500 Int)) )
))
(declare-datatypes ((ValueCell!17527 0))(
  ( (ValueCellFull!17527 (v!21135 V!54237)) (EmptyCell!17527) )
))
(declare-datatypes ((array!90543 0))(
  ( (array!90544 (arr!43733 (Array (_ BitVec 32) ValueCell!17527)) (size!44284 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90543)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334907 (= res!886034 (and (= (size!44284 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44283 _keys!1590) (size!44284 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334908 () Bool)

(declare-fun res!886033 () Bool)

(assert (=> b!1334908 (=> (not res!886033) (not e!760313))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334908 (= res!886033 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44283 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334909 () Bool)

(declare-fun e!760311 () Bool)

(declare-fun mapRes!56950 () Bool)

(assert (=> b!1334909 (= e!760311 (and e!760312 mapRes!56950))))

(declare-fun condMapEmpty!56950 () Bool)

(declare-fun mapDefault!56950 () ValueCell!17527)

