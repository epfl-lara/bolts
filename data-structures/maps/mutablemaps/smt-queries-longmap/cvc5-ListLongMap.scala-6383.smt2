; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82078 () Bool)

(assert start!82078)

(declare-fun b!956743 () Bool)

(declare-fun e!539175 () Bool)

(declare-fun tp_is_empty!21073 () Bool)

(assert (=> b!956743 (= e!539175 tp_is_empty!21073)))

(declare-fun res!640678 () Bool)

(declare-fun e!539174 () Bool)

(assert (=> start!82078 (=> (not res!640678) (not e!539174))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82078 (= res!640678 (validMask!0 mask!2088))))

(assert (=> start!82078 e!539174))

(assert (=> start!82078 true))

(declare-datatypes ((V!33081 0))(
  ( (V!33082 (val!10587 Int)) )
))
(declare-datatypes ((ValueCell!10055 0))(
  ( (ValueCellFull!10055 (v!13143 V!33081)) (EmptyCell!10055) )
))
(declare-datatypes ((array!58265 0))(
  ( (array!58266 (arr!28007 (Array (_ BitVec 32) ValueCell!10055)) (size!28487 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58265)

(declare-fun e!539177 () Bool)

(declare-fun array_inv!21671 (array!58265) Bool)

(assert (=> start!82078 (and (array_inv!21671 _values!1386) e!539177)))

(declare-datatypes ((array!58267 0))(
  ( (array!58268 (arr!28008 (Array (_ BitVec 32) (_ BitVec 64))) (size!28488 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58267)

(declare-fun array_inv!21672 (array!58267) Bool)

(assert (=> start!82078 (array_inv!21672 _keys!1668)))

(declare-fun b!956744 () Bool)

(declare-fun e!539176 () Bool)

(assert (=> b!956744 (= e!539176 tp_is_empty!21073)))

(declare-fun b!956745 () Bool)

(declare-fun mapRes!33574 () Bool)

(assert (=> b!956745 (= e!539177 (and e!539176 mapRes!33574))))

(declare-fun condMapEmpty!33574 () Bool)

(declare-fun mapDefault!33574 () ValueCell!10055)

