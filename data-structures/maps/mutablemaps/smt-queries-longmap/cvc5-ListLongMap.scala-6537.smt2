; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83134 () Bool)

(assert start!83134)

(declare-fun b_free!19099 () Bool)

(declare-fun b_next!19099 () Bool)

(assert (=> start!83134 (= b_free!19099 (not b_next!19099))))

(declare-fun tp!66577 () Bool)

(declare-fun b_and!30605 () Bool)

(assert (=> start!83134 (= tp!66577 b_and!30605)))

(declare-fun b!969281 () Bool)

(declare-fun res!648869 () Bool)

(declare-fun e!546491 () Bool)

(assert (=> b!969281 (=> (not res!648869) (not e!546491))))

(declare-datatypes ((array!60041 0))(
  ( (array!60042 (arr!28880 (Array (_ BitVec 32) (_ BitVec 64))) (size!29360 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60041)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60041 (_ BitVec 32)) Bool)

(assert (=> b!969281 (= res!648869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969282 () Bool)

(declare-fun res!648870 () Bool)

(assert (=> b!969282 (=> (not res!648870) (not e!546491))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969282 (= res!648870 (validKeyInArray!0 (select (arr!28880 _keys!1717) i!822)))))

(declare-fun b!969283 () Bool)

(assert (=> b!969283 (= e!546491 false)))

(declare-datatypes ((V!34313 0))(
  ( (V!34314 (val!11049 Int)) )
))
(declare-datatypes ((ValueCell!10517 0))(
  ( (ValueCellFull!10517 (v!13608 V!34313)) (EmptyCell!10517) )
))
(declare-datatypes ((array!60043 0))(
  ( (array!60044 (arr!28881 (Array (_ BitVec 32) ValueCell!10517)) (size!29361 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60043)

(declare-fun zeroValue!1367 () V!34313)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34313)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun lt!431581 () Bool)

(declare-datatypes ((tuple2!14250 0))(
  ( (tuple2!14251 (_1!7135 (_ BitVec 64)) (_2!7135 V!34313)) )
))
(declare-datatypes ((List!20144 0))(
  ( (Nil!20141) (Cons!20140 (h!21302 tuple2!14250) (t!28515 List!20144)) )
))
(declare-datatypes ((ListLongMap!12961 0))(
  ( (ListLongMap!12962 (toList!6496 List!20144)) )
))
(declare-fun contains!5551 (ListLongMap!12961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3681 (array!60041 array!60043 (_ BitVec 32) (_ BitVec 32) V!34313 V!34313 (_ BitVec 32) Int) ListLongMap!12961)

(assert (=> b!969283 (= lt!431581 (contains!5551 (getCurrentListMap!3681 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28880 _keys!1717) i!822)))))

(declare-fun b!969284 () Bool)

(declare-fun e!546488 () Bool)

(declare-fun tp_is_empty!21997 () Bool)

(assert (=> b!969284 (= e!546488 tp_is_empty!21997)))

(declare-fun b!969285 () Bool)

(declare-fun e!546490 () Bool)

(assert (=> b!969285 (= e!546490 tp_is_empty!21997)))

(declare-fun b!969286 () Bool)

(declare-fun e!546489 () Bool)

(declare-fun mapRes!35005 () Bool)

(assert (=> b!969286 (= e!546489 (and e!546490 mapRes!35005))))

(declare-fun condMapEmpty!35005 () Bool)

(declare-fun mapDefault!35005 () ValueCell!10517)

