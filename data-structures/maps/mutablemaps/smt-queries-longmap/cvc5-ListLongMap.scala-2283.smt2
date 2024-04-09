; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37168 () Bool)

(assert start!37168)

(declare-fun b_free!8287 () Bool)

(declare-fun b_next!8287 () Bool)

(assert (=> start!37168 (= b_free!8287 (not b_next!8287))))

(declare-fun tp!29576 () Bool)

(declare-fun b_and!15547 () Bool)

(assert (=> start!37168 (= tp!29576 b_and!15547)))

(declare-fun b!374697 () Bool)

(declare-fun res!211467 () Bool)

(declare-fun e!228334 () Bool)

(assert (=> b!374697 (=> (not res!211467) (not e!228334))))

(declare-datatypes ((array!21769 0))(
  ( (array!21770 (arr!10350 (Array (_ BitVec 32) (_ BitVec 64))) (size!10702 (_ BitVec 32))) )
))
(declare-fun lt!173093 () array!21769)

(declare-datatypes ((List!5845 0))(
  ( (Nil!5842) (Cons!5841 (h!6697 (_ BitVec 64)) (t!11003 List!5845)) )
))
(declare-fun arrayNoDuplicates!0 (array!21769 (_ BitVec 32) List!5845) Bool)

(assert (=> b!374697 (= res!211467 (arrayNoDuplicates!0 lt!173093 #b00000000000000000000000000000000 Nil!5842))))

(declare-fun b!374698 () Bool)

(declare-fun e!228335 () Bool)

(declare-fun e!228338 () Bool)

(declare-fun mapRes!14967 () Bool)

(assert (=> b!374698 (= e!228335 (and e!228338 mapRes!14967))))

(declare-fun condMapEmpty!14967 () Bool)

(declare-datatypes ((V!13019 0))(
  ( (V!13020 (val!4512 Int)) )
))
(declare-datatypes ((ValueCell!4124 0))(
  ( (ValueCellFull!4124 (v!6705 V!13019)) (EmptyCell!4124) )
))
(declare-datatypes ((array!21771 0))(
  ( (array!21772 (arr!10351 (Array (_ BitVec 32) ValueCell!4124)) (size!10703 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21771)

(declare-fun mapDefault!14967 () ValueCell!4124)

