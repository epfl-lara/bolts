; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35386 () Bool)

(assert start!35386)

(declare-fun b!353985 () Bool)

(declare-fun e!216920 () Bool)

(assert (=> b!353985 (= e!216920 false)))

(declare-fun lt!165622 () Bool)

(declare-datatypes ((array!19219 0))(
  ( (array!19220 (arr!9100 (Array (_ BitVec 32) (_ BitVec 64))) (size!9452 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19219)

(declare-datatypes ((List!5308 0))(
  ( (Nil!5305) (Cons!5304 (h!6160 (_ BitVec 64)) (t!10466 List!5308)) )
))
(declare-fun arrayNoDuplicates!0 (array!19219 (_ BitVec 32) List!5308) Bool)

(assert (=> b!353985 (= lt!165622 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5305))))

(declare-fun b!353986 () Bool)

(declare-fun e!216918 () Bool)

(declare-fun e!216919 () Bool)

(declare-fun mapRes!13254 () Bool)

(assert (=> b!353986 (= e!216918 (and e!216919 mapRes!13254))))

(declare-fun condMapEmpty!13254 () Bool)

(declare-datatypes ((V!11419 0))(
  ( (V!11420 (val!3960 Int)) )
))
(declare-datatypes ((ValueCell!3572 0))(
  ( (ValueCellFull!3572 (v!6150 V!11419)) (EmptyCell!3572) )
))
(declare-datatypes ((array!19221 0))(
  ( (array!19222 (arr!9101 (Array (_ BitVec 32) ValueCell!3572)) (size!9453 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19221)

(declare-fun mapDefault!13254 () ValueCell!3572)

