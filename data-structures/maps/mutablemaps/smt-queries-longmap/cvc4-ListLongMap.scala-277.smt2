; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4490 () Bool)

(assert start!4490)

(declare-fun b_free!1253 () Bool)

(declare-fun b_next!1253 () Bool)

(assert (=> start!4490 (= b_free!1253 (not b_next!1253))))

(declare-fun tp!5196 () Bool)

(declare-fun b_and!2077 () Bool)

(assert (=> start!4490 (= tp!5196 b_and!2077)))

(declare-fun res!21289 () Bool)

(declare-fun e!22150 () Bool)

(assert (=> start!4490 (=> (not res!21289) (not e!22150))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4490 (= res!21289 (validMask!0 mask!2294))))

(assert (=> start!4490 e!22150))

(assert (=> start!4490 true))

(assert (=> start!4490 tp!5196))

(declare-datatypes ((V!1967 0))(
  ( (V!1968 (val!830 Int)) )
))
(declare-datatypes ((ValueCell!604 0))(
  ( (ValueCellFull!604 (v!1925 V!1967)) (EmptyCell!604) )
))
(declare-datatypes ((array!2419 0))(
  ( (array!2420 (arr!1157 (Array (_ BitVec 32) ValueCell!604)) (size!1258 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2419)

(declare-fun e!22149 () Bool)

(declare-fun array_inv!767 (array!2419) Bool)

(assert (=> start!4490 (and (array_inv!767 _values!1501) e!22149)))

(declare-datatypes ((array!2421 0))(
  ( (array!2422 (arr!1158 (Array (_ BitVec 32) (_ BitVec 64))) (size!1259 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2421)

(declare-fun array_inv!768 (array!2421) Bool)

(assert (=> start!4490 (array_inv!768 _keys!1833)))

(declare-fun tp_is_empty!1607 () Bool)

(assert (=> start!4490 tp_is_empty!1607))

(declare-fun b!35040 () Bool)

(declare-fun res!21295 () Bool)

(assert (=> b!35040 (=> (not res!21295) (not e!22150))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35040 (= res!21295 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!1957 () Bool)

(declare-fun mapRes!1957 () Bool)

(declare-fun tp!5197 () Bool)

(declare-fun e!22151 () Bool)

(assert (=> mapNonEmpty!1957 (= mapRes!1957 (and tp!5197 e!22151))))

(declare-fun mapRest!1957 () (Array (_ BitVec 32) ValueCell!604))

(declare-fun mapValue!1957 () ValueCell!604)

(declare-fun mapKey!1957 () (_ BitVec 32))

(assert (=> mapNonEmpty!1957 (= (arr!1157 _values!1501) (store mapRest!1957 mapKey!1957 mapValue!1957))))

(declare-fun b!35041 () Bool)

(assert (=> b!35041 (= e!22150 false)))

(declare-datatypes ((SeekEntryResult!163 0))(
  ( (MissingZero!163 (index!2774 (_ BitVec 32))) (Found!163 (index!2775 (_ BitVec 32))) (Intermediate!163 (undefined!975 Bool) (index!2776 (_ BitVec 32)) (x!6981 (_ BitVec 32))) (Undefined!163) (MissingVacant!163 (index!2777 (_ BitVec 32))) )
))
(declare-fun lt!12847 () SeekEntryResult!163)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2421 (_ BitVec 32)) SeekEntryResult!163)

(assert (=> b!35041 (= lt!12847 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35042 () Bool)

(declare-fun res!21293 () Bool)

(assert (=> b!35042 (=> (not res!21293) (not e!22150))))

(declare-datatypes ((List!939 0))(
  ( (Nil!936) (Cons!935 (h!1502 (_ BitVec 64)) (t!3646 List!939)) )
))
(declare-fun arrayNoDuplicates!0 (array!2421 (_ BitVec 32) List!939) Bool)

(assert (=> b!35042 (= res!21293 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!936))))

(declare-fun b!35043 () Bool)

(assert (=> b!35043 (= e!22151 tp_is_empty!1607)))

(declare-fun mapIsEmpty!1957 () Bool)

(assert (=> mapIsEmpty!1957 mapRes!1957))

(declare-fun b!35044 () Bool)

(declare-fun e!22148 () Bool)

(assert (=> b!35044 (= e!22148 tp_is_empty!1607)))

(declare-fun b!35045 () Bool)

(assert (=> b!35045 (= e!22149 (and e!22148 mapRes!1957))))

(declare-fun condMapEmpty!1957 () Bool)

(declare-fun mapDefault!1957 () ValueCell!604)

