; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82518 () Bool)

(assert start!82518)

(declare-fun b!961238 () Bool)

(declare-fun e!542008 () Bool)

(assert (=> b!961238 (= e!542008 false)))

(declare-fun lt!430692 () Bool)

(declare-datatypes ((array!58949 0))(
  ( (array!58950 (arr!28339 (Array (_ BitVec 32) (_ BitVec 64))) (size!28819 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58949)

(declare-datatypes ((List!19808 0))(
  ( (Nil!19805) (Cons!19804 (h!20966 (_ BitVec 64)) (t!28179 List!19808)) )
))
(declare-fun arrayNoDuplicates!0 (array!58949 (_ BitVec 32) List!19808) Bool)

(assert (=> b!961238 (= lt!430692 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19805))))

(declare-fun res!643462 () Bool)

(assert (=> start!82518 (=> (not res!643462) (not e!542008))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82518 (= res!643462 (validMask!0 mask!2110))))

(assert (=> start!82518 e!542008))

(assert (=> start!82518 true))

(declare-datatypes ((V!33549 0))(
  ( (V!33550 (val!10763 Int)) )
))
(declare-datatypes ((ValueCell!10231 0))(
  ( (ValueCellFull!10231 (v!13321 V!33549)) (EmptyCell!10231) )
))
(declare-datatypes ((array!58951 0))(
  ( (array!58952 (arr!28340 (Array (_ BitVec 32) ValueCell!10231)) (size!28820 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58951)

(declare-fun e!542006 () Bool)

(declare-fun array_inv!21889 (array!58951) Bool)

(assert (=> start!82518 (and (array_inv!21889 _values!1400) e!542006)))

(declare-fun array_inv!21890 (array!58949) Bool)

(assert (=> start!82518 (array_inv!21890 _keys!1686)))

(declare-fun mapNonEmpty!34132 () Bool)

(declare-fun mapRes!34132 () Bool)

(declare-fun tp!65062 () Bool)

(declare-fun e!542004 () Bool)

(assert (=> mapNonEmpty!34132 (= mapRes!34132 (and tp!65062 e!542004))))

(declare-fun mapValue!34132 () ValueCell!10231)

(declare-fun mapRest!34132 () (Array (_ BitVec 32) ValueCell!10231))

(declare-fun mapKey!34132 () (_ BitVec 32))

(assert (=> mapNonEmpty!34132 (= (arr!28340 _values!1400) (store mapRest!34132 mapKey!34132 mapValue!34132))))

(declare-fun b!961239 () Bool)

(declare-fun e!542005 () Bool)

(declare-fun tp_is_empty!21425 () Bool)

(assert (=> b!961239 (= e!542005 tp_is_empty!21425)))

(declare-fun mapIsEmpty!34132 () Bool)

(assert (=> mapIsEmpty!34132 mapRes!34132))

(declare-fun b!961240 () Bool)

(assert (=> b!961240 (= e!542004 tp_is_empty!21425)))

(declare-fun b!961241 () Bool)

(declare-fun res!643461 () Bool)

(assert (=> b!961241 (=> (not res!643461) (not e!542008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58949 (_ BitVec 32)) Bool)

(assert (=> b!961241 (= res!643461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961242 () Bool)

(declare-fun res!643463 () Bool)

(assert (=> b!961242 (=> (not res!643463) (not e!542008))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961242 (= res!643463 (and (= (size!28820 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28819 _keys!1686) (size!28820 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961243 () Bool)

(assert (=> b!961243 (= e!542006 (and e!542005 mapRes!34132))))

(declare-fun condMapEmpty!34132 () Bool)

(declare-fun mapDefault!34132 () ValueCell!10231)

