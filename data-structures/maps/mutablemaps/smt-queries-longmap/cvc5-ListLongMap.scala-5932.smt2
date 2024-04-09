; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77392 () Bool)

(assert start!77392)

(declare-fun mapIsEmpty!29326 () Bool)

(declare-fun mapRes!29326 () Bool)

(assert (=> mapIsEmpty!29326 mapRes!29326))

(declare-fun res!608887 () Bool)

(declare-fun e!505098 () Bool)

(assert (=> start!77392 (=> (not res!608887) (not e!505098))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77392 (= res!608887 (validMask!0 mask!1756))))

(assert (=> start!77392 e!505098))

(assert (=> start!77392 true))

(declare-datatypes ((V!29527 0))(
  ( (V!29528 (val!9261 Int)) )
))
(declare-datatypes ((ValueCell!8729 0))(
  ( (ValueCellFull!8729 (v!11765 V!29527)) (EmptyCell!8729) )
))
(declare-datatypes ((array!52890 0))(
  ( (array!52891 (arr!25406 (Array (_ BitVec 32) ValueCell!8729)) (size!25866 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52890)

(declare-fun e!505100 () Bool)

(declare-fun array_inv!19900 (array!52890) Bool)

(assert (=> start!77392 (and (array_inv!19900 _values!1152) e!505100)))

(declare-datatypes ((array!52892 0))(
  ( (array!52893 (arr!25407 (Array (_ BitVec 32) (_ BitVec 64))) (size!25867 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52892)

(declare-fun array_inv!19901 (array!52892) Bool)

(assert (=> start!77392 (array_inv!19901 _keys!1386)))

(declare-fun b!901992 () Bool)

(declare-fun e!505097 () Bool)

(assert (=> b!901992 (= e!505100 (and e!505097 mapRes!29326))))

(declare-fun condMapEmpty!29326 () Bool)

(declare-fun mapDefault!29326 () ValueCell!8729)

