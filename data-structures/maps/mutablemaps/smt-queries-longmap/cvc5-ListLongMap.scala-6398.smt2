; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82212 () Bool)

(assert start!82212)

(declare-fun b_free!18457 () Bool)

(declare-fun b_next!18457 () Bool)

(assert (=> start!82212 (= b_free!18457 (not b_next!18457))))

(declare-fun tp!64333 () Bool)

(declare-fun b_and!29963 () Bool)

(assert (=> start!82212 (= tp!64333 b_and!29963)))

(declare-fun b!957698 () Bool)

(declare-fun res!641166 () Bool)

(declare-fun e!539948 () Bool)

(assert (=> b!957698 (=> (not res!641166) (not e!539948))))

(declare-datatypes ((array!58443 0))(
  ( (array!58444 (arr!28091 (Array (_ BitVec 32) (_ BitVec 64))) (size!28571 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58443)

(declare-datatypes ((List!19662 0))(
  ( (Nil!19659) (Cons!19658 (h!20820 (_ BitVec 64)) (t!28033 List!19662)) )
))
(declare-fun arrayNoDuplicates!0 (array!58443 (_ BitVec 32) List!19662) Bool)

(assert (=> b!957698 (= res!641166 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19659))))

(declare-fun b!957699 () Bool)

(declare-fun res!641164 () Bool)

(assert (=> b!957699 (=> (not res!641164) (not e!539948))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58443 (_ BitVec 32)) Bool)

(assert (=> b!957699 (= res!641164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957700 () Bool)

(declare-fun e!539944 () Bool)

(declare-fun tp_is_empty!21163 () Bool)

(assert (=> b!957700 (= e!539944 tp_is_empty!21163)))

(declare-fun b!957701 () Bool)

(declare-fun e!539946 () Bool)

(assert (=> b!957701 (= e!539946 tp_is_empty!21163)))

(declare-fun b!957702 () Bool)

(declare-fun e!539947 () Bool)

(declare-fun mapRes!33724 () Bool)

(assert (=> b!957702 (= e!539947 (and e!539944 mapRes!33724))))

(declare-fun condMapEmpty!33724 () Bool)

(declare-datatypes ((V!33201 0))(
  ( (V!33202 (val!10632 Int)) )
))
(declare-datatypes ((ValueCell!10100 0))(
  ( (ValueCellFull!10100 (v!13189 V!33201)) (EmptyCell!10100) )
))
(declare-datatypes ((array!58445 0))(
  ( (array!58446 (arr!28092 (Array (_ BitVec 32) ValueCell!10100)) (size!28572 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58445)

(declare-fun mapDefault!33724 () ValueCell!10100)

