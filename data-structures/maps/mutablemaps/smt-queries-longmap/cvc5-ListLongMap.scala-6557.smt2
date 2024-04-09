; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83254 () Bool)

(assert start!83254)

(declare-fun b_free!19219 () Bool)

(declare-fun b_next!19219 () Bool)

(assert (=> start!83254 (= b_free!19219 (not b_next!19219))))

(declare-fun tp!66936 () Bool)

(declare-fun b_and!30725 () Bool)

(assert (=> start!83254 (= tp!66936 b_and!30725)))

(declare-fun b!970939 () Bool)

(declare-fun e!547389 () Bool)

(declare-fun tp_is_empty!22117 () Bool)

(assert (=> b!970939 (= e!547389 tp_is_empty!22117)))

(declare-fun b!970940 () Bool)

(declare-fun e!547390 () Bool)

(assert (=> b!970940 (= e!547390 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34473 0))(
  ( (V!34474 (val!11109 Int)) )
))
(declare-fun zeroValue!1367 () V!34473)

(declare-datatypes ((tuple2!14338 0))(
  ( (tuple2!14339 (_1!7179 (_ BitVec 64)) (_2!7179 V!34473)) )
))
(declare-datatypes ((List!20229 0))(
  ( (Nil!20226) (Cons!20225 (h!21387 tuple2!14338) (t!28600 List!20229)) )
))
(declare-datatypes ((ListLongMap!13049 0))(
  ( (ListLongMap!13050 (toList!6540 List!20229)) )
))
(declare-fun lt!431743 () ListLongMap!13049)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34473)

(declare-datatypes ((ValueCell!10577 0))(
  ( (ValueCellFull!10577 (v!13668 V!34473)) (EmptyCell!10577) )
))
(declare-datatypes ((array!60267 0))(
  ( (array!60268 (arr!28993 (Array (_ BitVec 32) ValueCell!10577)) (size!29473 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60267)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60269 0))(
  ( (array!60270 (arr!28994 (Array (_ BitVec 32) (_ BitVec 64))) (size!29474 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60269)

(declare-fun getCurrentListMap!3725 (array!60269 array!60267 (_ BitVec 32) (_ BitVec 32) V!34473 V!34473 (_ BitVec 32) Int) ListLongMap!13049)

(assert (=> b!970940 (= lt!431743 (getCurrentListMap!3725 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970941 () Bool)

(declare-fun e!547392 () Bool)

(declare-fun mapRes!35185 () Bool)

(assert (=> b!970941 (= e!547392 (and e!547389 mapRes!35185))))

(declare-fun condMapEmpty!35185 () Bool)

(declare-fun mapDefault!35185 () ValueCell!10577)

