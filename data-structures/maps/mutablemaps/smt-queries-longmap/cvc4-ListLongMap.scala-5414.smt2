; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72288 () Bool)

(assert start!72288)

(declare-fun b!837190 () Bool)

(declare-fun res!569500 () Bool)

(declare-fun e!467254 () Bool)

(assert (=> b!837190 (=> (not res!569500) (not e!467254))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837190 (= res!569500 (validMask!0 mask!1196))))

(declare-fun b!837191 () Bool)

(declare-fun res!569502 () Bool)

(assert (=> b!837191 (=> (not res!569502) (not e!467254))))

(declare-datatypes ((array!46910 0))(
  ( (array!46911 (arr!22483 (Array (_ BitVec 32) (_ BitVec 64))) (size!22924 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46910)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46910 (_ BitVec 32)) Bool)

(assert (=> b!837191 (= res!569502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837192 () Bool)

(declare-fun e!467256 () Bool)

(declare-fun tp_is_empty!15323 () Bool)

(assert (=> b!837192 (= e!467256 tp_is_empty!15323)))

(declare-fun mapNonEmpty!24581 () Bool)

(declare-fun mapRes!24581 () Bool)

(declare-fun tp!47576 () Bool)

(declare-fun e!467252 () Bool)

(assert (=> mapNonEmpty!24581 (= mapRes!24581 (and tp!47576 e!467252))))

(declare-datatypes ((V!25477 0))(
  ( (V!25478 (val!7709 Int)) )
))
(declare-datatypes ((ValueCell!7222 0))(
  ( (ValueCellFull!7222 (v!10129 V!25477)) (EmptyCell!7222) )
))
(declare-fun mapRest!24581 () (Array (_ BitVec 32) ValueCell!7222))

(declare-fun mapValue!24581 () ValueCell!7222)

(declare-fun mapKey!24581 () (_ BitVec 32))

(declare-datatypes ((array!46912 0))(
  ( (array!46913 (arr!22484 (Array (_ BitVec 32) ValueCell!7222)) (size!22925 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46912)

(assert (=> mapNonEmpty!24581 (= (arr!22484 _values!688) (store mapRest!24581 mapKey!24581 mapValue!24581))))

(declare-fun b!837193 () Bool)

(declare-fun e!467257 () Bool)

(declare-datatypes ((List!16078 0))(
  ( (Nil!16075) (Cons!16074 (h!17205 (_ BitVec 64)) (t!22457 List!16078)) )
))
(declare-fun contains!4216 (List!16078 (_ BitVec 64)) Bool)

(assert (=> b!837193 (= e!467257 (contains!4216 Nil!16075 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!837194 () Bool)

(declare-fun res!569505 () Bool)

(assert (=> b!837194 (=> (not res!569505) (not e!467254))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837194 (= res!569505 (and (= (size!22925 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22924 _keys!868) (size!22925 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837195 () Bool)

(declare-fun res!569503 () Bool)

(assert (=> b!837195 (=> (not res!569503) (not e!467254))))

(assert (=> b!837195 (= res!569503 (and (bvsle #b00000000000000000000000000000000 (size!22924 _keys!868)) (bvslt (size!22924 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!837196 () Bool)

(assert (=> b!837196 (= e!467254 e!467257)))

(declare-fun res!569506 () Bool)

(assert (=> b!837196 (=> res!569506 e!467257)))

(assert (=> b!837196 (= res!569506 (contains!4216 Nil!16075 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!569501 () Bool)

(assert (=> start!72288 (=> (not res!569501) (not e!467254))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72288 (= res!569501 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22924 _keys!868))))))

(assert (=> start!72288 e!467254))

(assert (=> start!72288 true))

(declare-fun array_inv!17900 (array!46910) Bool)

(assert (=> start!72288 (array_inv!17900 _keys!868)))

(declare-fun e!467253 () Bool)

(declare-fun array_inv!17901 (array!46912) Bool)

(assert (=> start!72288 (and (array_inv!17901 _values!688) e!467253)))

(declare-fun mapIsEmpty!24581 () Bool)

(assert (=> mapIsEmpty!24581 mapRes!24581))

(declare-fun b!837197 () Bool)

(assert (=> b!837197 (= e!467253 (and e!467256 mapRes!24581))))

(declare-fun condMapEmpty!24581 () Bool)

(declare-fun mapDefault!24581 () ValueCell!7222)

