; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42200 () Bool)

(assert start!42200)

(declare-fun b_free!11711 () Bool)

(declare-fun b_next!11711 () Bool)

(assert (=> start!42200 (= b_free!11711 (not b_next!11711))))

(declare-fun tp!41157 () Bool)

(declare-fun b_and!20159 () Bool)

(assert (=> start!42200 (= tp!41157 b_and!20159)))

(declare-fun res!281320 () Bool)

(declare-fun e!275835 () Bool)

(assert (=> start!42200 (=> (not res!281320) (not e!275835))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42200 (= res!281320 (validMask!0 mask!1365))))

(assert (=> start!42200 e!275835))

(declare-fun tp_is_empty!13139 () Bool)

(assert (=> start!42200 tp_is_empty!13139))

(assert (=> start!42200 tp!41157))

(assert (=> start!42200 true))

(declare-datatypes ((array!30007 0))(
  ( (array!30008 (arr!14423 (Array (_ BitVec 32) (_ BitVec 64))) (size!14775 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30007)

(declare-fun array_inv!10410 (array!30007) Bool)

(assert (=> start!42200 (array_inv!10410 _keys!1025)))

(declare-datatypes ((V!18623 0))(
  ( (V!18624 (val!6614 Int)) )
))
(declare-datatypes ((ValueCell!6226 0))(
  ( (ValueCellFull!6226 (v!8901 V!18623)) (EmptyCell!6226) )
))
(declare-datatypes ((array!30009 0))(
  ( (array!30010 (arr!14424 (Array (_ BitVec 32) ValueCell!6226)) (size!14776 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30009)

(declare-fun e!275834 () Bool)

(declare-fun array_inv!10411 (array!30009) Bool)

(assert (=> start!42200 (and (array_inv!10411 _values!833) e!275834)))

(declare-fun b!470736 () Bool)

(declare-fun res!281319 () Bool)

(assert (=> b!470736 (=> (not res!281319) (not e!275835))))

(declare-datatypes ((List!8802 0))(
  ( (Nil!8799) (Cons!8798 (h!9654 (_ BitVec 64)) (t!14774 List!8802)) )
))
(declare-fun arrayNoDuplicates!0 (array!30007 (_ BitVec 32) List!8802) Bool)

(assert (=> b!470736 (= res!281319 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8799))))

(declare-fun b!470737 () Bool)

(declare-fun res!281318 () Bool)

(assert (=> b!470737 (=> (not res!281318) (not e!275835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30007 (_ BitVec 32)) Bool)

(assert (=> b!470737 (= res!281318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470738 () Bool)

(declare-fun e!275836 () Bool)

(declare-fun mapRes!21412 () Bool)

(assert (=> b!470738 (= e!275834 (and e!275836 mapRes!21412))))

(declare-fun condMapEmpty!21412 () Bool)

(declare-fun mapDefault!21412 () ValueCell!6226)

