; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35798 () Bool)

(assert start!35798)

(declare-fun mapIsEmpty!13872 () Bool)

(declare-fun mapRes!13872 () Bool)

(assert (=> mapIsEmpty!13872 mapRes!13872))

(declare-fun b!359295 () Bool)

(declare-fun e!220088 () Bool)

(assert (=> b!359295 (= e!220088 false)))

(declare-fun lt!166312 () Bool)

(declare-datatypes ((array!20007 0))(
  ( (array!20008 (arr!9494 (Array (_ BitVec 32) (_ BitVec 64))) (size!9846 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20007)

(declare-datatypes ((List!5492 0))(
  ( (Nil!5489) (Cons!5488 (h!6344 (_ BitVec 64)) (t!10650 List!5492)) )
))
(declare-fun arrayNoDuplicates!0 (array!20007 (_ BitVec 32) List!5492) Bool)

(assert (=> b!359295 (= lt!166312 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5489))))

(declare-fun b!359296 () Bool)

(declare-fun e!220089 () Bool)

(declare-fun tp_is_empty!8243 () Bool)

(assert (=> b!359296 (= e!220089 tp_is_empty!8243)))

(declare-fun res!199763 () Bool)

(assert (=> start!35798 (=> (not res!199763) (not e!220088))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35798 (= res!199763 (validMask!0 mask!1842))))

(assert (=> start!35798 e!220088))

(assert (=> start!35798 true))

(declare-datatypes ((V!11967 0))(
  ( (V!11968 (val!4166 Int)) )
))
(declare-datatypes ((ValueCell!3778 0))(
  ( (ValueCellFull!3778 (v!6356 V!11967)) (EmptyCell!3778) )
))
(declare-datatypes ((array!20009 0))(
  ( (array!20010 (arr!9495 (Array (_ BitVec 32) ValueCell!3778)) (size!9847 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20009)

(declare-fun e!220090 () Bool)

(declare-fun array_inv!6986 (array!20009) Bool)

(assert (=> start!35798 (and (array_inv!6986 _values!1208) e!220090)))

(declare-fun array_inv!6987 (array!20007) Bool)

(assert (=> start!35798 (array_inv!6987 _keys!1456)))

(declare-fun b!359297 () Bool)

(assert (=> b!359297 (= e!220090 (and e!220089 mapRes!13872))))

(declare-fun condMapEmpty!13872 () Bool)

(declare-fun mapDefault!13872 () ValueCell!3778)

