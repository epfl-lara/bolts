; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35344 () Bool)

(assert start!35344)

(declare-fun b!353662 () Bool)

(declare-fun e!216665 () Bool)

(assert (=> b!353662 (= e!216665 false)))

(declare-fun lt!165577 () Bool)

(declare-datatypes ((array!19159 0))(
  ( (array!19160 (arr!9071 (Array (_ BitVec 32) (_ BitVec 64))) (size!9423 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19159)

(declare-datatypes ((List!5298 0))(
  ( (Nil!5295) (Cons!5294 (h!6150 (_ BitVec 64)) (t!10456 List!5298)) )
))
(declare-fun arrayNoDuplicates!0 (array!19159 (_ BitVec 32) List!5298) Bool)

(assert (=> b!353662 (= lt!165577 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5295))))

(declare-fun b!353663 () Bool)

(declare-fun e!216667 () Bool)

(declare-fun e!216664 () Bool)

(declare-fun mapRes!13206 () Bool)

(assert (=> b!353663 (= e!216667 (and e!216664 mapRes!13206))))

(declare-fun condMapEmpty!13206 () Bool)

(declare-datatypes ((V!11379 0))(
  ( (V!11380 (val!3945 Int)) )
))
(declare-datatypes ((ValueCell!3557 0))(
  ( (ValueCellFull!3557 (v!6135 V!11379)) (EmptyCell!3557) )
))
(declare-datatypes ((array!19161 0))(
  ( (array!19162 (arr!9072 (Array (_ BitVec 32) ValueCell!3557)) (size!9424 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19161)

(declare-fun mapDefault!13206 () ValueCell!3557)

