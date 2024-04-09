; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83270 () Bool)

(assert start!83270)

(declare-fun b_free!19235 () Bool)

(declare-fun b_next!19235 () Bool)

(assert (=> start!83270 (= b_free!19235 (not b_next!19235))))

(declare-fun tp!66984 () Bool)

(declare-fun b_and!30741 () Bool)

(assert (=> start!83270 (= tp!66984 b_and!30741)))

(declare-fun b!971179 () Bool)

(declare-fun res!650156 () Bool)

(declare-fun e!547509 () Bool)

(assert (=> b!971179 (=> (not res!650156) (not e!547509))))

(declare-datatypes ((array!60299 0))(
  ( (array!60300 (arr!29009 (Array (_ BitVec 32) (_ BitVec 64))) (size!29489 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60299)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971179 (= res!650156 (validKeyInArray!0 (select (arr!29009 _keys!1717) i!822)))))

(declare-fun b!971180 () Bool)

(declare-fun res!650158 () Bool)

(assert (=> b!971180 (=> (not res!650158) (not e!547509))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60299 (_ BitVec 32)) Bool)

(assert (=> b!971180 (= res!650158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971181 () Bool)

(declare-fun res!650152 () Bool)

(assert (=> b!971181 (=> (not res!650152) (not e!547509))))

(declare-datatypes ((V!34493 0))(
  ( (V!34494 (val!11117 Int)) )
))
(declare-datatypes ((ValueCell!10585 0))(
  ( (ValueCellFull!10585 (v!13676 V!34493)) (EmptyCell!10585) )
))
(declare-datatypes ((array!60301 0))(
  ( (array!60302 (arr!29010 (Array (_ BitVec 32) ValueCell!10585)) (size!29490 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60301)

(declare-fun zeroValue!1367 () V!34493)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34493)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14352 0))(
  ( (tuple2!14353 (_1!7186 (_ BitVec 64)) (_2!7186 V!34493)) )
))
(declare-datatypes ((List!20243 0))(
  ( (Nil!20240) (Cons!20239 (h!21401 tuple2!14352) (t!28614 List!20243)) )
))
(declare-datatypes ((ListLongMap!13063 0))(
  ( (ListLongMap!13064 (toList!6547 List!20243)) )
))
(declare-fun contains!5599 (ListLongMap!13063 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3732 (array!60299 array!60301 (_ BitVec 32) (_ BitVec 32) V!34493 V!34493 (_ BitVec 32) Int) ListLongMap!13063)

(assert (=> b!971181 (= res!650152 (contains!5599 (getCurrentListMap!3732 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29009 _keys!1717) i!822)))))

(declare-fun b!971182 () Bool)

(declare-fun e!547510 () Bool)

(declare-fun e!547508 () Bool)

(declare-fun mapRes!35209 () Bool)

(assert (=> b!971182 (= e!547510 (and e!547508 mapRes!35209))))

(declare-fun condMapEmpty!35209 () Bool)

(declare-fun mapDefault!35209 () ValueCell!10585)

