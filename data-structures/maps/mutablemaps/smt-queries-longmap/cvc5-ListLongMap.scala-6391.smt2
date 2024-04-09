; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82170 () Bool)

(assert start!82170)

(declare-fun b!957287 () Bool)

(declare-fun res!640943 () Bool)

(declare-fun e!539631 () Bool)

(assert (=> b!957287 (=> (not res!640943) (not e!539631))))

(declare-datatypes ((array!58361 0))(
  ( (array!58362 (arr!28050 (Array (_ BitVec 32) (_ BitVec 64))) (size!28530 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58361)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58361 (_ BitVec 32)) Bool)

(assert (=> b!957287 (= res!640943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957288 () Bool)

(declare-fun e!539632 () Bool)

(declare-fun tp_is_empty!21121 () Bool)

(assert (=> b!957288 (= e!539632 tp_is_empty!21121)))

(declare-fun res!640944 () Bool)

(assert (=> start!82170 (=> (not res!640944) (not e!539631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82170 (= res!640944 (validMask!0 mask!2088))))

(assert (=> start!82170 e!539631))

(assert (=> start!82170 true))

(declare-datatypes ((V!33145 0))(
  ( (V!33146 (val!10611 Int)) )
))
(declare-datatypes ((ValueCell!10079 0))(
  ( (ValueCellFull!10079 (v!13168 V!33145)) (EmptyCell!10079) )
))
(declare-datatypes ((array!58363 0))(
  ( (array!58364 (arr!28051 (Array (_ BitVec 32) ValueCell!10079)) (size!28531 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58363)

(declare-fun e!539633 () Bool)

(declare-fun array_inv!21705 (array!58363) Bool)

(assert (=> start!82170 (and (array_inv!21705 _values!1386) e!539633)))

(declare-fun array_inv!21706 (array!58361) Bool)

(assert (=> start!82170 (array_inv!21706 _keys!1668)))

(declare-fun b!957289 () Bool)

(declare-fun mapRes!33661 () Bool)

(assert (=> b!957289 (= e!539633 (and e!539632 mapRes!33661))))

(declare-fun condMapEmpty!33661 () Bool)

(declare-fun mapDefault!33661 () ValueCell!10079)

