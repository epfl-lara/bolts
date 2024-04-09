; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83566 () Bool)

(assert start!83566)

(declare-fun b_free!19525 () Bool)

(declare-fun b_next!19525 () Bool)

(assert (=> start!83566 (= b_free!19525 (not b_next!19525))))

(declare-fun tp!67864 () Bool)

(declare-fun b_and!31163 () Bool)

(assert (=> start!83566 (= tp!67864 b_and!31163)))

(declare-fun b!975933 () Bool)

(declare-fun res!653448 () Bool)

(declare-fun e!550030 () Bool)

(assert (=> b!975933 (=> (not res!653448) (not e!550030))))

(declare-datatypes ((array!60873 0))(
  ( (array!60874 (arr!29296 (Array (_ BitVec 32) (_ BitVec 64))) (size!29776 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60873)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975933 (= res!653448 (validKeyInArray!0 (select (arr!29296 _keys!1717) i!822)))))

(declare-fun res!653447 () Bool)

(assert (=> start!83566 (=> (not res!653447) (not e!550030))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83566 (= res!653447 (validMask!0 mask!2147))))

(assert (=> start!83566 e!550030))

(assert (=> start!83566 true))

(declare-datatypes ((V!34889 0))(
  ( (V!34890 (val!11265 Int)) )
))
(declare-datatypes ((ValueCell!10733 0))(
  ( (ValueCellFull!10733 (v!13824 V!34889)) (EmptyCell!10733) )
))
(declare-datatypes ((array!60875 0))(
  ( (array!60876 (arr!29297 (Array (_ BitVec 32) ValueCell!10733)) (size!29777 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60875)

(declare-fun e!550027 () Bool)

(declare-fun array_inv!22553 (array!60875) Bool)

(assert (=> start!83566 (and (array_inv!22553 _values!1425) e!550027)))

(declare-fun tp_is_empty!22429 () Bool)

(assert (=> start!83566 tp_is_empty!22429))

(assert (=> start!83566 tp!67864))

(declare-fun array_inv!22554 (array!60873) Bool)

(assert (=> start!83566 (array_inv!22554 _keys!1717)))

(declare-fun b!975934 () Bool)

(declare-fun res!653443 () Bool)

(assert (=> b!975934 (=> (not res!653443) (not e!550030))))

(declare-datatypes ((List!20465 0))(
  ( (Nil!20462) (Cons!20461 (h!21623 (_ BitVec 64)) (t!28970 List!20465)) )
))
(declare-fun arrayNoDuplicates!0 (array!60873 (_ BitVec 32) List!20465) Bool)

(assert (=> b!975934 (= res!653443 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20462))))

(declare-fun b!975935 () Bool)

(declare-fun e!550028 () Bool)

(declare-fun mapRes!35653 () Bool)

(assert (=> b!975935 (= e!550027 (and e!550028 mapRes!35653))))

(declare-fun condMapEmpty!35653 () Bool)

(declare-fun mapDefault!35653 () ValueCell!10733)

