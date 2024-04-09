; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96362 () Bool)

(assert start!96362)

(declare-fun b!1094663 () Bool)

(declare-fun e!625015 () Bool)

(assert (=> b!1094663 (= e!625015 false)))

(declare-fun lt!489668 () Bool)

(declare-datatypes ((array!70830 0))(
  ( (array!70831 (arr!34085 (Array (_ BitVec 32) (_ BitVec 64))) (size!34622 (_ BitVec 32))) )
))
(declare-fun lt!489667 () array!70830)

(declare-datatypes ((List!23944 0))(
  ( (Nil!23941) (Cons!23940 (h!25149 (_ BitVec 64)) (t!33958 List!23944)) )
))
(declare-fun arrayNoDuplicates!0 (array!70830 (_ BitVec 32) List!23944) Bool)

(assert (=> b!1094663 (= lt!489668 (arrayNoDuplicates!0 lt!489667 #b00000000000000000000000000000000 Nil!23941))))

(declare-fun b!1094664 () Bool)

(declare-fun res!730603 () Bool)

(declare-fun e!625011 () Bool)

(assert (=> b!1094664 (=> (not res!730603) (not e!625011))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70830)

(assert (=> b!1094664 (= res!730603 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34622 _keys!1070))))))

(declare-fun b!1094665 () Bool)

(declare-fun e!625010 () Bool)

(declare-fun e!625012 () Bool)

(declare-fun mapRes!42226 () Bool)

(assert (=> b!1094665 (= e!625010 (and e!625012 mapRes!42226))))

(declare-fun condMapEmpty!42226 () Bool)

(declare-datatypes ((V!41101 0))(
  ( (V!41102 (val!13547 Int)) )
))
(declare-datatypes ((ValueCell!12781 0))(
  ( (ValueCellFull!12781 (v!16169 V!41101)) (EmptyCell!12781) )
))
(declare-datatypes ((array!70832 0))(
  ( (array!70833 (arr!34086 (Array (_ BitVec 32) ValueCell!12781)) (size!34623 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70832)

(declare-fun mapDefault!42226 () ValueCell!12781)

