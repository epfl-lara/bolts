; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83240 () Bool)

(assert start!83240)

(declare-fun b_free!19205 () Bool)

(declare-fun b_next!19205 () Bool)

(assert (=> start!83240 (= b_free!19205 (not b_next!19205))))

(declare-fun tp!66894 () Bool)

(declare-fun b_and!30711 () Bool)

(assert (=> start!83240 (= tp!66894 b_and!30711)))

(declare-fun b!970729 () Bool)

(declare-fun e!547286 () Bool)

(declare-fun e!547287 () Bool)

(declare-fun mapRes!35164 () Bool)

(assert (=> b!970729 (= e!547286 (and e!547287 mapRes!35164))))

(declare-fun condMapEmpty!35164 () Bool)

(declare-datatypes ((V!34453 0))(
  ( (V!34454 (val!11102 Int)) )
))
(declare-datatypes ((ValueCell!10570 0))(
  ( (ValueCellFull!10570 (v!13661 V!34453)) (EmptyCell!10570) )
))
(declare-datatypes ((array!60241 0))(
  ( (array!60242 (arr!28980 (Array (_ BitVec 32) ValueCell!10570)) (size!29460 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60241)

(declare-fun mapDefault!35164 () ValueCell!10570)

