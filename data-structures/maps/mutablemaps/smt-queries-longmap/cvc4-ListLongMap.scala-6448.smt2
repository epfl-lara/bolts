; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82560 () Bool)

(assert start!82560)

(declare-fun b!961616 () Bool)

(declare-fun e!542319 () Bool)

(assert (=> b!961616 (= e!542319 false)))

(declare-fun lt!430755 () Bool)

(declare-datatypes ((array!59021 0))(
  ( (array!59022 (arr!28375 (Array (_ BitVec 32) (_ BitVec 64))) (size!28855 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59021)

(declare-datatypes ((List!19821 0))(
  ( (Nil!19818) (Cons!19817 (h!20979 (_ BitVec 64)) (t!28192 List!19821)) )
))
(declare-fun arrayNoDuplicates!0 (array!59021 (_ BitVec 32) List!19821) Bool)

(assert (=> b!961616 (= lt!430755 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19818))))

(declare-fun mapIsEmpty!34195 () Bool)

(declare-fun mapRes!34195 () Bool)

(assert (=> mapIsEmpty!34195 mapRes!34195))

(declare-fun b!961617 () Bool)

(declare-fun res!643652 () Bool)

(assert (=> b!961617 (=> (not res!643652) (not e!542319))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33605 0))(
  ( (V!33606 (val!10784 Int)) )
))
(declare-datatypes ((ValueCell!10252 0))(
  ( (ValueCellFull!10252 (v!13342 V!33605)) (EmptyCell!10252) )
))
(declare-datatypes ((array!59023 0))(
  ( (array!59024 (arr!28376 (Array (_ BitVec 32) ValueCell!10252)) (size!28856 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59023)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961617 (= res!643652 (and (= (size!28856 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28855 _keys!1686) (size!28856 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961619 () Bool)

(declare-fun e!542322 () Bool)

(declare-fun e!542320 () Bool)

(assert (=> b!961619 (= e!542322 (and e!542320 mapRes!34195))))

(declare-fun condMapEmpty!34195 () Bool)

(declare-fun mapDefault!34195 () ValueCell!10252)

