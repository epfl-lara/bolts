; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35726 () Bool)

(assert start!35726)

(declare-fun b!358548 () Bool)

(declare-fun e!219551 () Bool)

(declare-fun tp_is_empty!8171 () Bool)

(assert (=> b!358548 (= e!219551 tp_is_empty!8171)))

(declare-fun b!358549 () Bool)

(declare-fun res!199340 () Bool)

(declare-fun e!219550 () Bool)

(assert (=> b!358549 (=> (not res!199340) (not e!219550))))

(declare-datatypes ((array!19867 0))(
  ( (array!19868 (arr!9424 (Array (_ BitVec 32) (_ BitVec 64))) (size!9776 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19867)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19867 (_ BitVec 32)) Bool)

(assert (=> b!358549 (= res!199340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358550 () Bool)

(declare-fun e!219548 () Bool)

(declare-fun e!219547 () Bool)

(declare-fun mapRes!13764 () Bool)

(assert (=> b!358550 (= e!219548 (and e!219547 mapRes!13764))))

(declare-fun condMapEmpty!13764 () Bool)

(declare-datatypes ((V!11871 0))(
  ( (V!11872 (val!4130 Int)) )
))
(declare-datatypes ((ValueCell!3742 0))(
  ( (ValueCellFull!3742 (v!6320 V!11871)) (EmptyCell!3742) )
))
(declare-datatypes ((array!19869 0))(
  ( (array!19870 (arr!9425 (Array (_ BitVec 32) ValueCell!3742)) (size!9777 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19869)

(declare-fun mapDefault!13764 () ValueCell!3742)

