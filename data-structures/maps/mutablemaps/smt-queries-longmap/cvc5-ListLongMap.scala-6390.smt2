; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82164 () Bool)

(assert start!82164)

(declare-fun res!640917 () Bool)

(declare-fun e!539584 () Bool)

(assert (=> start!82164 (=> (not res!640917) (not e!539584))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82164 (= res!640917 (validMask!0 mask!2088))))

(assert (=> start!82164 e!539584))

(assert (=> start!82164 true))

(declare-datatypes ((V!33137 0))(
  ( (V!33138 (val!10608 Int)) )
))
(declare-datatypes ((ValueCell!10076 0))(
  ( (ValueCellFull!10076 (v!13165 V!33137)) (EmptyCell!10076) )
))
(declare-datatypes ((array!58351 0))(
  ( (array!58352 (arr!28045 (Array (_ BitVec 32) ValueCell!10076)) (size!28525 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58351)

(declare-fun e!539587 () Bool)

(declare-fun array_inv!21701 (array!58351) Bool)

(assert (=> start!82164 (and (array_inv!21701 _values!1386) e!539587)))

(declare-datatypes ((array!58353 0))(
  ( (array!58354 (arr!28046 (Array (_ BitVec 32) (_ BitVec 64))) (size!28526 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58353)

(declare-fun array_inv!21702 (array!58353) Bool)

(assert (=> start!82164 (array_inv!21702 _keys!1668)))

(declare-fun b!957233 () Bool)

(declare-fun e!539588 () Bool)

(declare-fun tp_is_empty!21115 () Bool)

(assert (=> b!957233 (= e!539588 tp_is_empty!21115)))

(declare-fun mapIsEmpty!33652 () Bool)

(declare-fun mapRes!33652 () Bool)

(assert (=> mapIsEmpty!33652 mapRes!33652))

(declare-fun b!957234 () Bool)

(assert (=> b!957234 (= e!539584 false)))

(declare-fun lt!430259 () Bool)

(declare-datatypes ((List!19646 0))(
  ( (Nil!19643) (Cons!19642 (h!20804 (_ BitVec 64)) (t!28017 List!19646)) )
))
(declare-fun arrayNoDuplicates!0 (array!58353 (_ BitVec 32) List!19646) Bool)

(assert (=> b!957234 (= lt!430259 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19643))))

(declare-fun b!957235 () Bool)

(declare-fun res!640915 () Bool)

(assert (=> b!957235 (=> (not res!640915) (not e!539584))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957235 (= res!640915 (and (= (size!28525 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28526 _keys!1668) (size!28525 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957236 () Bool)

(declare-fun res!640916 () Bool)

(assert (=> b!957236 (=> (not res!640916) (not e!539584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58353 (_ BitVec 32)) Bool)

(assert (=> b!957236 (= res!640916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957237 () Bool)

(declare-fun e!539586 () Bool)

(assert (=> b!957237 (= e!539586 tp_is_empty!21115)))

(declare-fun mapNonEmpty!33652 () Bool)

(declare-fun tp!64258 () Bool)

(assert (=> mapNonEmpty!33652 (= mapRes!33652 (and tp!64258 e!539586))))

(declare-fun mapRest!33652 () (Array (_ BitVec 32) ValueCell!10076))

(declare-fun mapValue!33652 () ValueCell!10076)

(declare-fun mapKey!33652 () (_ BitVec 32))

(assert (=> mapNonEmpty!33652 (= (arr!28045 _values!1386) (store mapRest!33652 mapKey!33652 mapValue!33652))))

(declare-fun b!957238 () Bool)

(assert (=> b!957238 (= e!539587 (and e!539588 mapRes!33652))))

(declare-fun condMapEmpty!33652 () Bool)

(declare-fun mapDefault!33652 () ValueCell!10076)

